import Factory
import GoogleMaps
import Integration
import SwiftUI

enum ViewFactory {
    static func skiingView() -> SkiingView {
        Container.Skiing.view()
    }

    // MARK: - PROFILE
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

    // MARK: - SOCIAL

    static func socialView(navigator: SocialListViewNavigatorProtocol) -> SocialView {
        Container.Social.view(navigator)
    }

    static func socialNavigator() -> SocialNavigator {
        Container.Social.navigator()
    }

    static func friendRequestView() -> FriendRequestView {
        Container.FriendRequest.view()
    }

    static func friendAddView(navigator: SocialAddViewNavigatorProtocol) -> FriendAddView {
        Container.FriendAdd.view(navigator)
    }

    // MARK: - MAP
    static func googleMap(
        cameraPos: Binding<GMSCameraPosition>,
        selectedPath: Binding<TrackedPath?>
    ) -> GoogleMapsView {
        Container.GoogleMap.view((cameraPos, selectedPath))
    }

    static func mapView() -> MapView {
        Container.Map.view()
    }

    // MARK: - Tracklist

    static func trackListView() -> TrackListView {
        Container.TrackList.view()
    }
}
