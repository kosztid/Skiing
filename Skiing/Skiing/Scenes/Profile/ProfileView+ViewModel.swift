import Combine
import Integration
import SwiftUI
import UI

extension ProfileView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()
        @Published var isSignedIn = false

        private var cancellables: Set<AnyCancellable> = []
        private let navigator: ProfileViewNavigatorProtocol
        private let accountService: AccountServiceProtocol

        func logout() {
            Task {
                await amplifyService.signOut()
            }
        }

        func login() {
            navigator.login()
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
            navigator: ProfileViewNavigatorProtocol,
            accountService: AccountServiceProtocol
        ) {
            self.navigator = navigator
            self.accountService = accountService
            bindPublishers()
        }
    }
}
