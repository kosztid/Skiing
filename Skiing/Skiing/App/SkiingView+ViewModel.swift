import Combine
import SwiftUI
import UI

extension SkiingView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()
        private var cancellables: Set<AnyCancellable> = []
    }
}
