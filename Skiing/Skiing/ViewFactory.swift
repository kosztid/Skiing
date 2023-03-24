import GoogleMaps
import Factory
import SwiftUI

enum ViewFactory {
    static func skiingView() -> SkiingView {
        Container.Skiing.view()
    }

    // PROFILE
    static func loginView(navigator: LoginViewNavigatorProtocol) -> LoginView {
        Container.Login.view(navigator)
    }

    static func registerView(navigator: RegisterViewNavigatorProtocol) -> RegisterView {
        Container.Register.view(navigator)
    }

    static func registerVerificationView(navigator: RegisterVerificationViewNavigatorProtocol) -> VerifyView {
        Container.RegisterVerify.view(navigator)
    }

    static func profileView(navigator: ProfileViewNavigatorProtocol) -> ProfileView {
        Container.Profile.view(navigator)
    }

    static func profileNavigator() -> ProfileNavigator {
        Container.Profile.navigator()
    }

    // MAP
    static func googleMap(cameraPos: Binding<GMSCameraPosition>) -> GoogleMapsView {
        Container.GoogleMap.view((cameraPos))
    }

    static func mapView() -> MapView {
        Container.Map.view()
    }
}
