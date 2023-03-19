import Factory

enum ViewFactory {
    static func skiingView() -> SkiingView {
        Container.Skiing.view()
    }

    static func loginView(navigator: LoginViewNavigatorProtocol) -> LoginView {
        Container.Login.view(navigator)
    }

    static func profileView(navigator: ProfileViewNavigatorProtocol) -> ProfileView {
        Container.Profile.view(navigator)
    }

    static func profileNavigator() -> ProfileNavigator {
        Container.Profile.navigator()
    }
}
