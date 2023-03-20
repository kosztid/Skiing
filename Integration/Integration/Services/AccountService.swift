import Combine
import UIKit
import Amplify
import AWSCognitoAuthPlugin


public protocol AccountServiceProtocol: AnyObject {
    var isSignedInPublisher: AnyPublisher<Bool, Never> { get }
    func signIn(_ username: String, _ password: String) async
    func signOut() async
}

final class AccountService {
    private let isSignedIn: CurrentValueSubject<Bool, Never> = .init(false)
    private var cancellables: Set<AnyCancellable> = []

    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
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
}

extension AccountService: AccountServiceProtocol {
    var isSignedInPublisher: AnyPublisher<Bool, Never> {
        isSignedIn
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
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

public class UserData: ObservableObject {
    public init() {}

    static public let shared = UserData()

    @Published public var isSignedIn: Bool = false
}
