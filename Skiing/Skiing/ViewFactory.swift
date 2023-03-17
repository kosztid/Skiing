import Factory

enum ViewFactory {
    static func skiingView() -> SkiingView {
        Container.Skiing.view()
    }
}
