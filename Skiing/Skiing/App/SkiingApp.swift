import SwiftUI
import Integration

typealias Navigator = View

@main
struct SkiingApp: App {
    var body: some Scene {
        WindowGroup {
            ViewFactory.skiingView()
        }
    }

    init() {
//        AmplifyService.initialize()
    }
}
