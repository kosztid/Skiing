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
        private let amplifyService: AmplifyServiceProtocol
        @Published var isSignedIn = false
        @Published var userName: String = ""
        @Published var password: String = ""

        func login() {
            Task {
                await amplifyService.signIn("", "")
            }
            navigator.loggedIn()
        }

        func bindPublishers() {
            amplifyService.isSignedInPublisher
                .sink { _ in
                } receiveValue: { [weak self] isSignedIn in
                    self?.isSignedIn = isSignedIn
                }
                .store(in: &cancellables)
        }

        init(
            navigator: LoginViewNavigatorProtocol,
            service: AmplifyServiceProtocol
        ) {
            self.navigator = navigator
            self.amplifyService = service
            bindPublishers()
        }
    }
}
