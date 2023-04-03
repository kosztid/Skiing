import SwiftUI

extension FriendRequestView {
    final class ViewModel: ObservableObject {
        var requests: [Friend] = [
            Friend(id: UUID().uuidString, name: "Béla"),
            Friend(id: UUID().uuidString, name: "Pista")
        ]
    }
}
