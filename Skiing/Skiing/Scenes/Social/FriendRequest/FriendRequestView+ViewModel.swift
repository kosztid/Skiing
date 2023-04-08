import SwiftUI

extension FriendRequestView {
    final class ViewModel: ObservableObject {
        var requests: [FriendModel] = [
            FriendModel(id: UUID().uuidString, name: "Béla"),
            FriendModel(id: UUID().uuidString, name: "Pista")
        ]
    }
}
