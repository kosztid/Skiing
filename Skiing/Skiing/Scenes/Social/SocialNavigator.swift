import FlowStacks
import SwiftUI

public enum SocialScreen {
    case list
    case add
    case requests
}

protocol SocialListViewNavigatorProtocol {
    func navigateToRequest()
    func navigateToAdd()
}

protocol SocialAddViewNavigatorProtocol {
}

protocol SocialRequestsViewNavigatorProtocol {
}

public struct SocialNavigator: Navigator {
    @State var routes: Routes<SocialScreen>

    public var body: some View {
        Router($routes) { screen, _ in
            switch screen {
            case .list: ViewFactory.socialView(navigator: self)
            case .add: Text("Add")
            case .requests: ViewFactory.friendRequestView()
            }
        }
    }

    public init() {
        self.routes = [.root(.list, embedInNavigationView: true)]
    }
}

extension SocialNavigator: SocialListViewNavigatorProtocol {
    func navigateToRequest() {
        routes.push(.requests)
    }

    func navigateToAdd() {
        routes.push(.add)
    }
}
