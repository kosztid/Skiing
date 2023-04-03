import SwiftUI
import UI

public struct TabBarNavigator: View {
    @State var selectedItem: Int = 2

    public var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedItem) {
                ViewFactory.mapView()
                    .tabItem { Image(systemName: "map") }
                    .tag(0)
                Text("Pistes")
                    .tabItem { Image(systemName: "figure.skiing.downhill") }
                    .tag(1)
                ViewFactory.socialNavigator()
                    .tabItem { Image(systemName: "person.3.fill") }
                    .tag(2)
                ViewFactory.profileNavigator()
                    .tabItem { Image(systemName: "person") }
                    .tag(3)
                Text("Leaderboard")
                    .tabItem { Image(systemName: "chart.bar") }
                    .tag(4)
            }
        }
    }

    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
}
