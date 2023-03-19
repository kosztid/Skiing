import SwiftUI
import UI

struct RegisterView: View {
    @StateObject var viewModel: ViewModel
    var body: some View {
        VStack {
            Text("Registration")
                .font(.largeTitle)
                .padding(.bottom, 24)
            VStack {
                TextField(text: $viewModel.userName)
                    .regularTextFieldStyle(label: "UserName")
                TextField(text: $viewModel.password)
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
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(viewModel: .init())
    }
}
