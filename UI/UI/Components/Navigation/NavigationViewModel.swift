import FlowStacks
import SwiftUI

public protocol NavigationViewModel: AnyObject {
    var path: NavigationRoute { get set }

    func getBinding<Screen>() -> Binding<Routes<Screen?>>
}

public extension NavigationViewModel {
    func getBinding<Screen>() -> Binding<Routes<Screen?>> {
        .init { [weak self] in
            self?.path.routes.map { $0.map { $0 as? Screen } } ?? []
        } set: { [weak self] routes in
            guard let self = self else { return }
            var newRoutes = Routes<Any>()
            for (index, route) in routes.enumerated() {
                if route.screen != nil {
                    newRoutes.append(route.map { $0 as Any })
                } else if index < self.path.routes.count {
                    newRoutes.append(self.path.routes[index])
                }
            }
            self.path.routes = newRoutes
        }
    }
}
