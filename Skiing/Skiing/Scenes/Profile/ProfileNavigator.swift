import FlowStacks
import Foundation
import SwiftUI

public enum ProfileScreen {
    case profile
    case login
    case register
    case verify
}

protocol ProfileViewNavigatorProtocol {
    func login()
}

protocol LoginViewNavigatorProtocol {
    func loggedIn()
}

public struct ProfileNavigator: Navigator {
    @State var routes: Routes<ProfileScreen>

    public var body: some View {
        Router($routes) { screen, _ in
            switch screen {
            case .profile:
                ViewFactory.profileView(navigator: self)
            case .login:
                ViewFactory.loginView(navigator: self)
            case .register:
                Text("register")
            case .verify:
                Text("Verify")
            }
        }
    }

    public init(
    ) {
        self.routes = [.root(.profile, embedInNavigationView: true)]
    }
}

extension ProfileNavigator: ProfileViewNavigatorProtocol {
    func login() {
        routes.push(.login)
    }
}

extension ProfileNavigator: LoginViewNavigatorProtocol {
    func loggedIn() {
        routes.popToRoot()
    }
}
