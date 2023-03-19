import FlowStacks
import SwiftUI

public struct NavigationRoute {
    public var routes: Routes<Any> = []

    public init() {}

    public mutating func push<Screen>(_ screen: Screen) {
        routes.push(screen)
    }

    public mutating func presentCover<Screen>(
        _ screen: Screen,
        embedInNavigationView: Bool = false,
        onDismiss: (() -> Void)? = nil
    ) {
        routes.presentCover(
            screen,
            embedInNavigationView: embedInNavigationView,
            onDismiss: onDismiss
        )
    }

    public mutating func presentSheet<Screen>(
        _ screen: Screen,
        embedInNavigationView: Bool = false,
        onDismiss: (() -> Void)? = nil
    ) {
        routes.presentSheet(
            screen,
            embedInNavigationView: embedInNavigationView,
            onDismiss: onDismiss
        )
    }
}

public extension Route {
    func map<OtherType>(_ mapper: (Screen) -> OtherType?) -> Route<OtherType?> {
        switch self {
        case .push(let screen):
            return .push(mapper(screen))
        case let .sheet(screen, embedInNavigationView, onDismiss):
            return .sheet(mapper(screen), embedInNavigationView: embedInNavigationView, onDismiss: onDismiss)
        case let .cover(screen, embedInNavigationView, onDismiss):
            return .cover(mapper(screen), embedInNavigationView: embedInNavigationView, onDismiss: onDismiss)
        }
    }
}
