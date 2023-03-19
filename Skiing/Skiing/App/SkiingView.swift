import SwiftUI
import Integration
import Factory
import UI

struct SkiingView: View {
    @StateObject var viewModel: ViewModel
    @ObservedObject private var userData: UserData = .shared
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        Container.TabBar.view()
    }
}

struct SignInButton: View {
    var body: some View {
        Button(
            action: {
            },
            label: {
                HStack {
                    Image(systemName: "person.fill")
                        .scaleEffect(1.5)
                        .padding()
                    Text("Sign In")
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
struct SignOutButton : View {
    var body: some View {
        Button(
            action: {
                Task { await AmplifyService.shared.signOut() }
            },
            label: { Text("Sign Out") }
        )
    }
}