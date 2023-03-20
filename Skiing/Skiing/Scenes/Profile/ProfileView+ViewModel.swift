import Combine
import Integration
import SwiftUI
import UI

extension ProfileView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()
        @Published var userData: UserData = .shared
        @Published var isSignedIn = false
        private var cancellables: Set<AnyCancellable> = []
        private let navigator: ProfileViewNavigatorProtocol
        private let amplifyService: AmplifyServiceProtocol

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
            service: AmplifyServiceProtocol
        ) {
            self.navigator = navigator
            self.amplifyService = service
            bindPublishers()
        }
    }
}
