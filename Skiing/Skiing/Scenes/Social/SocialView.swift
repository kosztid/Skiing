import SwiftUI

struct SocialView: View {
    @StateObject var viewModel: ViewModel
    @State var presentAdd = false
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.friendList?.friends ?? [], id: \.self) { friend in
                        FriendListItem(friend: friend!)
                    }
                }
            }
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
                    presentAdd = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

public struct Friend: Identifiable {
    public var id: String
    public var name: String
}

public struct FriendListItem: View {
    var friend: String
    @State var isTracking: Bool
    public var body: some View {
        HStack {
            Text(friend)
            Spacer()
            Toggle(isOn: $isTracking) {
            }
        }
        .padding(.horizontal, 20)
    }
    
    public init(friend: String, isTracking: Bool = false) {
        self.friend = friend
        self.isTracking = isTracking
    }
}
