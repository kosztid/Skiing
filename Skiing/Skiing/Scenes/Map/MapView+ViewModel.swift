import Combine
import SwiftUI
import UI
import Integration

extension MapView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()

        private var cancellables: Set<AnyCancellable> = []
        let accountService: AccountServiceProtocol

        init(accountService: AccountServiceProtocol) {
            self.accountService = accountService
        }
    }
}
