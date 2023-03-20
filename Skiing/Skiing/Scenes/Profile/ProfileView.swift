import SwiftUI
import Factory

struct ProfileView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        ZStack {
            if viewModel.isSignedIn {
                Button {
                    viewModel.logout()
                } label: {
                    Text("Logout")
                }
            } else {
                VStack {
                    Text("Logged Out")
                    Button {
                        viewModel.login()
                    } label: {
                        Text("Login")
                    }
                }
            }
        }
    }
}
