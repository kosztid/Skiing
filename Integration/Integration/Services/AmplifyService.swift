import UIKit
import Amplify
import AWSCognitoAuthPlugin

public class AmplifyService {
    static public let shared = AmplifyService()
    public static func initialize() -> AmplifyService {
        return .shared
    }
    private init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Initialized Amplify");

            _ = Amplify.Hub.listen(to: .auth) { (payload) in

                switch payload.eventName {

                case HubPayload.EventName.Auth.signedIn:
                    print("==HUB== User signed In, update UI")
                    Task {
                        await self.updateUserData(withSignInStatus: true)
                    }


                case HubPayload.EventName.Auth.signedOut:
                    print("==HUB== User signed Out, update UI")
                    Task {
                        await self.updateUserData(withSignInStatus: false)
                    }

                case HubPayload.EventName.Auth.sessionExpired:
                    print("==HUB== Session expired, show sign in UI")
                    Task {
                        await self.updateUserData(withSignInStatus: false)
                    }

                default:
                    //print("==HUB== \(payload)")
                    break
                }
            }

            // let's check if user is signedIn or not
            Task {
                do {
                    let session = try await Amplify.Auth.fetchAuthSession()

                    // let's update UserData and the UI
                    await self.updateUserData(withSignInStatus: session.isSignedIn)
                } catch {
                    print("Fetch auth session failed with error - \(error)")
                }
            }
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }

    public func signIn(_ username: String, _ password: String) async {
        do {
            let signInResult = try await Amplify.Auth.signIn(username: username, password: password)
            if signInResult.isSignedIn {
                print("Sign in succeeded")
            }
        } catch let error as AuthError {
            print("Sign in failed \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }
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

    @MainActor
    func updateUserData(withSignInStatus status : Bool) async {
        let userData : UserData = .shared
        userData.isSignedIn = status
    }
}

public class UserData: ObservableObject {
    public init() {}

    static public let shared = UserData()

    @Published public var isSignedIn: Bool = false
}
