import Combine
import UIKit
import Amplify
import AWSCognitoAuthPlugin
import AWSAPIPlugin


public protocol AccountServiceProtocol: AnyObject {
    var isSignedInPublisher: AnyPublisher<Bool, Never> { get }
    var friendListPublisher: AnyPublisher<Friendlist?, Never> { get }
    var friendRequestsPublisher: AnyPublisher<[FriendRequest], Never> { get }
    var friendPositionPublisher: AnyPublisher<Location?, Never> { get }
    func login() async
    func signUp(_ username: String,_ email: String,_ password: String) async
    func signIn(_ username: String,_ password: String) async
    func confirmSignUp(with confirmationCode: String) async
    func addFriend(request: FriendRequest) async
    func deleteFriend(friendlist: Friendlist) async
    func sendFriendRequest(recipient: String) async
    func createLocation(xCoord: String, yCoord: String) async
    func queryLocation() async
    func queryFriends() async
    func createFriendList() async
    func queryFriendRequests() async
    func queryFriendLocation(userId: String) async
    func updateLocation(xCoord: String, yCoord: String) async
    func signOut() async
    func confirm() async
}

final class AccountService {
    private let isSignedIn: CurrentValueSubject<Bool, Never> = .init(false)
    private let friendList: CurrentValueSubject<Friendlist?, Never> = .init(nil)
    private let friendRequests: CurrentValueSubject<[FriendRequest], Never> = .init([])
    private let friendPosition: CurrentValueSubject<Location?, Never> = .init(nil)
    private var cancellables: Set<AnyCancellable> = []
    private var username: String = ""

    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
            try Amplify.configure()

            Task {
                do {
                    let session = try await Amplify.Auth.fetchAuthSession()

                    // let's update UserData and the UI
                    self.isSignedIn.send(session.isSignedIn)
                } catch {
                    print("Fetch auth session failed with error - \(error)")
                }
            }
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }
    //
    //
    //    func deleteLocation(location: Location) async {
    //
    //        do {
    //            guard let data = location.data else { return }
    //            let result = try await Amplify.API.mutate(request: .delete(data))
    //            switch result {
    //            case .success(let data):
    //                print("Successfully deleted note: \(data)")
    //            case .failure(let error):
    //                print("Got failed result with \(error.errorDescription)")
    //            }
    //        } catch {
    //            print("Got failed result with error \(error)")
    //        }
    //    }
}

extension AccountService: AccountServiceProtocol {
    var friendPositionPublisher: AnyPublisher<Location?, Never> {
        friendPosition
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    var friendRequestsPublisher: AnyPublisher<[FriendRequest], Never> {
        friendRequests
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    var friendListPublisher: AnyPublisher<Friendlist?, Never> {
        friendList
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    var isSignedInPublisher: AnyPublisher<Bool, Never> {
        isSignedIn
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    public func createFriendList() async {
        do {
            let user = try await Amplify.Auth.getCurrentUser()
            let friendlist = Friendlist(id: user.userId, friends: [])
            guard let data = friendlist.data else { return }
            let result = try await Amplify.API.mutate(request: .create(data))
            let parsedData = try result.get()
        } catch let error as APIError {
            print("Failed to create note: \(error)")
        } catch {
            print("Unexpected error while calling create API : \(error)")
        }
    }

    public func addFriend(request: FriendRequest) async {
        do {
            let user = try await Amplify.Auth.getCurrentUser()
            let friendQueryResults = try await Amplify.API.query(request: .list(UserfriendList.self))
            let friendQueryResultsMapped = try friendQueryResults.get().elements.map { list in
                Friendlist(from: list)
            }

            var friends = friendQueryResultsMapped.first { item in
                item.id == user.userId
            }?.friends

            friends?.append(request.sender)

            let friendlist = Friendlist(id: user.userId, friends: friends)
            guard let data = friendlist.data else { return }
            let result = try await Amplify.API.mutate(request: .update(data))
            let _ = try await Amplify.API.mutate(request: .delete(request))
            let parsedData = try result.get()

            var senderFriends = friendQueryResultsMapped.first { item in
                item.id == request.sender.id
            }?.friends

            senderFriends?.append(Friend(id: user.userId, name: user.username))

            print("id:", request.sender.id)
            print("friends", senderFriends)
            let senderFriendlist = Friendlist(id: request.sender.id, friends: senderFriends)
            guard let senderData = senderFriendlist.data else { return }
            let senderResult = try await Amplify.API.mutate(request: .update(senderData))
            let senderParsedData = try senderResult.get()

            await queryFriends()
            await queryFriendRequests()
        } catch let error as APIError {
            print("Failed to create note: \(error)")
        } catch {
            print("Unexpected error while calling create API : \(error)")
        }
    }

    public func deleteFriend(friendlist: Friendlist) async {
        do {
            let data = UserfriendList(
                id: friendlist.id,
                friends: friendlist.friends,
                createdAt: friendlist.data?.createdAt,
                updatedAt: friendlist.data?.updatedAt
            )
            print("servicefriends", data.friends)
            print("friendlist", friendlist.friends)
            let result = try await Amplify.API.mutate(request: .update(data))
            let parsedData = try result.get()
            await queryFriends()
        } catch let error as APIError {
            print("Failed to create note: \(error)")
        } catch {
            print("Unexpected error while calling create API : \(error)")
        }
    }

    public func sendFriendRequest(recipient: String) async {
        do {
            let user = try await Amplify.Auth.getCurrentUser()
            var email = ""
            do {
                var attributes = try await Amplify.Auth.fetchUserAttributes()
                for attribute in attributes {
                    if (attribute.key.rawValue == "email") {
                        email = attribute.value
                        print(email)
                    }
                }
            } catch let error as APIError {
                    print(error)
            }


            let request = FriendRequest(senderEmail: email, sender: Friend(id: user.userId, name: user.username), recipient: recipient)

            let result = try await Amplify.API.mutate(request: .create(request))

            let parsedData = try result.get()

        } catch let error as APIError {
            print("Failed to create note: \(error)")
        } catch {
            print("Unexpected error while calling create API : \(error)")
        }
    }

    public func queryFriendRequests() async {
        do {
            let friendQueryResults = try await Amplify.API.query(request: .list(FriendRequest.self))

            let user = try await Amplify.Auth.getCurrentUser()

            let result = try friendQueryResults.get().elements

            var email = ""
            do {
                var attributes = try await Amplify.Auth.fetchUserAttributes()
                for attribute in attributes {
                    if (attribute.key.rawValue == "email") {
                        email = attribute.value
                        print(email)
                    }
                }
            } catch let error as APIError {
                    print(error)
            }

            print("Result", result)
            let currentFriendRequests = result.compactMap { item in
                if item.recipient == email { return item } else { return nil }
            }

            friendRequests.send(currentFriendRequests)
            print(currentFriendRequests)
        } catch {
            print("Can not retrieve friendrequests : error \(error)")
        }
    }

    func queryFriends() async {
        do {
            let friendQueryResults = try await Amplify.API.query(request: .list(UserfriendList.self))

            let user = try await Amplify.Auth.getCurrentUser()

            let result = try friendQueryResults.get().elements.map { list in
                Friendlist(from: list)
            }

            let currentFriendList = result.first { item in
                item.id == user.userId
            }

            friendList.send(currentFriendList)
            print(result)
        } catch {
            print("Can not retrieve friends : error \(error)")
        }
    }

    public func createLocation(xCoord: String, yCoord: String) async {
        do {
            let user = try await Amplify.Auth.getCurrentUser()
            let location = Location(id: "location_" + user.userId, name: user.username, xCoord: xCoord, yCoord: yCoord)
            guard let data = location.data else { return }
            let result = try await Amplify.API.mutate(request: .create(data))
            let parsedData = try result.get()
            print("Successfully create location: \(parsedData)")
        } catch let error as APIError {
            print("Failed to create note: \(error)")
        } catch {
            print("Unexpected error while calling create API : \(error)")
        }
    }

    public func updateLocation(xCoord: String, yCoord: String) async {
        do {
            let user = try await Amplify.Auth.getCurrentUser()
            let location = Location(id: "location_" + user.userId, name: user.username, xCoord: xCoord, yCoord: yCoord)
            guard let data = location.data else { return }
            let result = try await Amplify.API.mutate(request: .update(data))
            let parsedData = try result.get()
        } catch let error as APIError {
            print("Failed to create note: \(error)")
        } catch {
            print("Unexpected error while calling create API : \(error)")
        }
    }

    func queryLocation() async {
        do {
            let queryResult = try await Amplify.API.query(request: .list(CurrentPosition.self))

            let result = try queryResult.get().elements.map { cPos in
                Location(from: cPos)
            }

            print(result)
        } catch {
            print("Can not retrieve location : error \(error)")
        }
    }

    func queryFriendLocation(userId: String) async {
        do {
            let queryResult = try await Amplify.API.query(request: .list(CurrentPosition.self))

            let result = try queryResult.get().elements.map { cPos in
                Location(from: cPos)
            }

            let newResult = result.first { loc in
                loc.id == ("location_" + userId)
            }
            print(newResult?.data)
        } catch {
            print("Can not retrieve friendlocation : error \(error)")
        }
    }

    public func login() async {
        do {
            let signInResult = try await Amplify.Auth.signInWithWebUI(presentationAnchor: UIApplication.shared.windows.first!)
            if signInResult.isSignedIn {
                print("Sign in succeeded")
            }
        } catch let error as AuthError {
            print("Sign in failed \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }
    }

    public func signIn(_ username: String, _ password: String) async {
        do {
            let signInResult = try await Amplify.Auth.signIn(username: username, password: password)
            if signInResult.isSignedIn {
                print("Sign in succeeded")
                isSignedIn.send(true)
            }
        } catch let error as AuthError {
            print("Sign in failed \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }
    }

    func signUp(_ username: String,_ email: String,_ password: String) async {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        do {
            let signUpResult = try await Amplify.Auth.signUp(
                username: username,
                password: password,
                options: options
            )

            self.username = username

            if case let .confirmUser(deliveryDetails, _, userId) = signUpResult.nextStep {
                print("Delivery details \(String(describing: deliveryDetails)) for userId: \(String(describing: userId)))")
            } else {
                print("Signup Complete")
            }
        } catch let error as AuthError {
            print("An error occurred while registering a user \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }
    }

    func confirmSignUp(with confirmationCode: String) async {
        do {
            let confirmSignUpResult = try await Amplify.Auth.confirmSignUp(
                for: self.username,
                confirmationCode: confirmationCode
            )
            print("Confirm sign up result completed: \(confirmSignUpResult.isSignUpComplete)")

            await self.createLocation(xCoord: "0", yCoord: "0")
            await self.createFriendList()
        } catch let error as AuthError {
            print("An error occurred while confirming sign up \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }
    }

    func confirm() async {
        await self.createLocation(xCoord: "0", yCoord: "0")
        await self.createFriendList()
    }

    // signout
    public func signOut() async {
        let result = await Amplify.Auth.signOut()
        guard let signOutResult = result as? AWSCognitoSignOutResult
        else {
            print("Signout failed")
            return
        }

        switch signOutResult {
        case .complete:
            print("Successfully signed out")
            isSignedIn.send(false)

        case let .partial(revokeTokenError, globalSignOutError, hostedUIError):
            if let hostedUIError = hostedUIError {
                print("HostedUI error  \(String(describing: hostedUIError))")
            }

            if let globalSignOutError = globalSignOutError {
                print("GlobalSignOut error  \(String(describing: globalSignOutError))")
            }

            if let revokeTokenError = revokeTokenError {
                print("Revoke token error  \(String(describing: revokeTokenError))")
            }

        case .failed(let error):
            print("SignOut failed with \(error)")
        }
    }
}
