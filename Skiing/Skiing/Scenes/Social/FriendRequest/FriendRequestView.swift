import SwiftUI

struct FriendRequestView: View {
    @StateObject var viewModel: ViewModel
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.requests) { request in
                    FriendRequestRowView(requester: request, action: {})
                }
            }
        }
    }
}

public struct FriendRequestRowView: View {
    var requester: Friend
    let action: () -> Void

    public var body: some View {
        HStack {
            Text(requester.name)
            Spacer()
            Button {
                action()
            } label: {
                Text("Accept")
            }
        }
        .padding(.horizontal, 20)
    }
}

struct FriendRequestView_Previews: PreviewProvider {
    static var previews: some View {
        FriendRequestView(viewModel: .init())
    }
}
