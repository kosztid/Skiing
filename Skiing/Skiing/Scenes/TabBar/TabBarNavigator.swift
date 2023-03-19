import Factory
import SwiftUI
import UI

public struct TabBarNavigator: View {
    @State var selectedItem: Int = .zero

    public var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedItem) {
                Text("Map")
                    .tabItem { Image(systemName: "map") }
                    .tag(0)
                Text("Pistes")
                    .tabItem { Image(systemName: "figure.skiing.downhill") }
                    .tag(1)
                Text("Weather")
                    .tabItem { Image(systemName: "cloud.sun") }
                    .tag(2)
                Text("Profile")
                    .tabItem { Image(systemName: "person") }
                    .tag(3)
                Text("Leaderboard")
                    .tabItem { Image(systemName: "chart.bar") }
                    .tag(4)
            }
        }
    }
}
