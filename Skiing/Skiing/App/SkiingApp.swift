import SwiftUI
import Integration

@main
struct SkiingApp: App {
    var body: some Scene {
        WindowGroup {
            ViewFactory.skiingView()
        }
    }

    init() {
        AmplifyService.initialize()
    }
}
