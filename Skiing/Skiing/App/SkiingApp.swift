import SwiftUI
import Integration

typealias Navigator = View

@main
struct SkiingApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ViewFactory.skiingView()
        }
    }

    init() {
    }
}
