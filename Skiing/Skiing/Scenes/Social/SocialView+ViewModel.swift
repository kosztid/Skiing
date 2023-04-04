import Combine
import Integration
import SwiftUI

extension SocialView {
    final class ViewModel: ObservableObject {
        @Published var friends: [Friend]
        @Published var friendList: Friendlist?
        @Published var notification: Bool

        private let navigator: SocialListViewNavigatorProtocol
        private let accountService: AccountServiceProtocol

        private var cancellables: Set<AnyCancellable> = []

        init(
            navigator: SocialListViewNavigatorProtocol,
            accountService: AccountServiceProtocol
        ) {
            self.navigator = navigator
            self.accountService = accountService
            self.friends = [
                Friend(id: UUID().uuidString, name: "Béla"),
                Friend(id: UUID().uuidString, name: "Pista")
            ]
            self.notification = false
            initFriendList()
            Task {
                await accountService.queryFriends()
            }
        }

        func initFriendList() {
            accountService.friendListPublisher
                .sink { _ in
                } receiveValue: { [weak self] friendList in
                    self?.friendList = friendList
                }
                .store(in: &cancellables)
        }

        func navigateToRequests() {
            navigator.navigateToRequest()
        }

        func addFriend() {
            Task {
                await accountService.addFriend()
            }
        }

    }
}
