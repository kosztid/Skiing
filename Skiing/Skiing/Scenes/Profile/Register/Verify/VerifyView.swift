import SwiftUI
import UI

struct VerifyView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        VStack(spacing: .zero) {
            Text("Verification")
                .font(.largeTitle)
                .padding(.bottom, 24)
            Text("Please verify your email address by entering the verification code from the confirmation email.")
            TextField(text: $viewModel.verificationCode)
                .regularTextFieldStyle(label: "Verification Code")
            Button(
                action: {
                    viewModel.verify()
                },
                label: {
                    Text("Verify")
                        .font(.title)
                }
            )
            .buttonStyle(SkiingButtonStyle())
        }
        .padding(.horizontal, 32)
    }
}
