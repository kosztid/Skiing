import SwiftUI
import UI

struct FriendAddView: View {
    @StateObject var viewModel: ViewModel
    var body: some View {
        VStack {
            Text("Add a friend to ski with")
                .font(.largeTitle)
                .padding(.vertical, 40)
            TextField(text: $viewModel.email)
                .regularTextFieldStyle(label: "Email Address")
                .padding(.bottom, 20)
            Button {
                viewModel.addFriend()
            } label: {
                Text("Add")
            }
            .buttonStyle(SkiingButtonStyle())
            Spacer()
        }
        .padding(.horizontal, 32)
    }
}
