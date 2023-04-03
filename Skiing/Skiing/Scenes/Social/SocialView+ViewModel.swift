import SwiftUI

extension SocialView {
    final class ViewModel: ObservableObject {
        @Published var friends: [Friend]
        @Published var notification: Bool

        private let navigator: SocialListViewNavigatorProtocol

        init(navigator: SocialListViewNavigatorProtocol) {
            self.navigator = navigator
            self.friends = [
                Friend(id: UUID().uuidString, name: "Béla"),
                Friend(id: UUID().uuidString, name: "Pista")
            ]
            self.notification = false
        }

        func navigateToRequests() {
            navigator.navigateToRequest()
        }

    }
}
