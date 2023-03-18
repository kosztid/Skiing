import SwiftUI
import Integration
import UI

struct SkiingView: View {
    @StateObject var viewModel: ViewModel
    @ObservedObject private var userData: UserData = .shared

    //    var body: some View {
    //        VStack {
    //            Image(systemName: "figure.skiing.downhill")
    //                .imageScale(.large)
    //                .foregroundColor(.accentColor)
    //            Text("Track your run!")
    //        }
    //        .padding()
    //    }

    var body: some View {

        ZStack {
            if (userData.isSignedIn) {
                NavigationView {
                    Text("Loggedin")
                    .navigationBarTitle(Text("List"))
                    .navigationBarItems(leading: SignOutButton())
                }
            } else {
                SignInButton()
            }
        }
    }
}

struct SignInButton: View {
    var body: some View {
        Button(
            action: {
                Task { await AmplifyService.shared.signIn() }
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
