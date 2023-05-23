import SwiftUI
import UI

struct RegisterView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        VStack(spacing: .zero) {
            Text("Welcome to Skiing")
                .font(.largeTitle)
                .padding(.bottom, 16)
            Text("Registration")
                .font(.largeTitle)
                .padding(.bottom, 24)
            VStack {
                TextField(text: $viewModel.userName)
                    .regularTextFieldStyle(label: "Username")
                TextField(text: $viewModel.email)
                    .regularTextFieldStyle(label: "Email")
                ToggleableSecureField(text: $viewModel.password)
                    .regularTextFieldStyle(label: "Password")
                Button(
                    action: {
                        viewModel.register()
                    },
                    label: {
                        Text("Register")
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
