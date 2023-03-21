import UI
import SwiftUI

struct VerifyView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        VStack {
            Text("Verification")
                .font(.largeTitle)
                .padding(.bottom, 24)
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
