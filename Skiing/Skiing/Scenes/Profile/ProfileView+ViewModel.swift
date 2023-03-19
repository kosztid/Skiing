import Integration
import SwiftUI
import UI

extension ProfileView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()
        @Published var userData: UserData = .shared
        private let navigator: ProfileViewNavigatorProtocol

        func logout() {
            Task {
                await AmplifyService.shared.signOut()
            }
        }

        func login() {
            navigator.login()
        }

        init(
            navigator: ProfileViewNavigatorProtocol
        ) {
            self.navigator = navigator
        }
    }
}
