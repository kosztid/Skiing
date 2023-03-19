import Combine
import Integration
import SwiftUI
import UI

extension LoginView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()
        private var cancellables: Set<AnyCancellable> = []
        @Published var userData: UserData = .shared
        private let navigator: LoginViewNavigatorProtocol
        @Published var userName: String = ""
        @Published var password: String = ""

        func login() {
            Task {
//                await AmplifyService.shared.signIn(userName, password)
            }
            navigator.loggedIn()
        }

        init(
            navigator: LoginViewNavigatorProtocol
        ) {
            self.navigator = navigator
        }
    }
}
