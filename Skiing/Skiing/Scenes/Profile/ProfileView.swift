import Factory
import SwiftUI
import UI

struct ProfileView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        ZStack {
            if viewModel.isSignedIn {
                loggedInView
            } else {
                VStack {
                    Text("Logged Out")
                    Button {
                        viewModel.login()
                    } label: {
                        Text("Login")
                    }
                    .buttonStyle(SkiingButtonStyle())
                    Button {
                        viewModel.register()
                    } label: {
                        Text("Register")
                    }
                    .buttonStyle(SkiingButtonStyle())
                }
            }
        }
    }

    var loggedInView: some View {
        VStack(spacing: .zero) {
            ZStack {
                Color.teal
                    .ignoresSafeArea()
                Text("Profile")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.vertical, 24)
            }
            .frame(height: 120)
            ScrollView(showsIndicators: false) {
                VStack(spacing: .zero) {
                    stats
                    Divider()
                        .padding(.vertical, 8)
                    userData
                    Divider()
                        .padding(.vertical, 8)
                    Button {
                        viewModel.logout()
                    } label: {
                        Text("Logout")
                    }
                    .buttonStyle(SkiingButtonStyle(style: .secondary))
                }
                .padding(.horizontal, 8)
            }
        }
    }

    var userData: some View {
        VStack(spacing: .zero) {
            Text("You")
                .bold()
                .padding(.vertical, 16)
                .font(.title)
            VStack(alignment: .leading, spacing: .zero) {
                Text("Email address")
                    .foregroundColor(.gray)
                    .font(.caption)
                Text(viewModel.currentEmail ?? "")
                Divider()
                    .padding(.vertical, 4)
                Text("Name")
                    .foregroundColor(.gray)
                    .font(.caption)
                Text(viewModel.currentUser?.username ?? "")
            }
        }
    }

    var stats: some View {
        VStack(spacing: .zero) {
            Text("Stats")
                .bold()
                .padding(.vertical, 16)
                .font(.title)
            HStack {
                Text("Total distance on snow:")
                Spacer()
                Text("\(viewModel.totalDistance, specifier: "%.2f") meters")
            }
            .padding(.vertical, 8)
            HStack {
                Text("Total time on snow:")
                Spacer()
                Text("\(viewModel.totalTime)")
            }
            .padding(.vertical, 8)
        }
    }
}
