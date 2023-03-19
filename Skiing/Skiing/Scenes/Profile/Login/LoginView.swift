import SwiftUI

struct LoginView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            VStack {
                TextField("username", text: $viewModel.userName)
                TextField("password", text: $viewModel.password)
                Button(
                    action: {
                        viewModel.login()
                    },
                    label: {
                        HStack {
                            Image(systemName: "person.fill")
                                .scaleEffect(1.5)
                                .padding()
                            Text("Login")
                                .font(.largeTitle)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(30)
                    }
                )
            }
        }
    }
}
