import SwiftUI
import UI

struct LoginView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding(.bottom, 24)
            VStack {
                TextField(text: $viewModel.userName)
                    .regularTextFieldStyle(label: "UserName")
                ToggleableSecureField(text: $viewModel.password)
                    .regularTextFieldStyle(label: "Password")
                HStack {
                    Button {
                    } label: {
                        Text("Forgotten Password")
                            .font(.caption)
                    }
                    .padding(.leading, 12)
                    Spacer()
                }
                Button(
                    action: {
                        viewModel.login()
                    },
                    label: {
                        Text("Login")
                            .font(.title)
                    }
                )
                .buttonStyle(SkiingButtonStyle())
            }
            .padding(.horizontal, 32)
        }
        .navigationBarBackButtonHidden(true)
    }
}
