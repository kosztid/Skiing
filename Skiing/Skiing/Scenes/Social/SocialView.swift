import Integration
import SwiftUI

struct SocialView: View {
    @StateObject var viewModel: ViewModel
    @State var presentAdd = false
    
    var body: some View {
        ZStack {
            List {
                ForEach(viewModel.friendList?.friends ?? []) { friend in
                    FriendListItem(friend: friend) {
                        viewModel.updateTracking(id: friend.id)
                    }
                    .listRowSeparator(.hidden)
                }
                .onDelete(perform: viewModel.delete)
            }
            .listStyle(.plain)

        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    viewModel.navigateToRequests()
                } label: {
                    viewModel.notification ? Image(systemName: "bell.badge.fill") : Image(systemName: "bell.fill")
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    viewModel.navigateToAddFriend()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

public struct FriendModel: Identifiable {
    public var id: String
    public var name: String
}

public struct FriendListItem: View {
    var friend: Friend
    @State var isTracking: Bool
    let action: () -> Void

    public var body: some View {
        HStack {
            Text(friend.name)
            Spacer()
            Toggle(isOn: $isTracking) {
            }
        }
        .onChange(of: isTracking) { _ in
            action()
        }
        .padding(.horizontal, 20)
    }
    
    public init(friend: Friend, isTracking: Bool = false, action: @escaping () -> Void) {
        self.friend = friend
        self.isTracking = .init(friend.isTracking)
        self.action = action
    }
}
