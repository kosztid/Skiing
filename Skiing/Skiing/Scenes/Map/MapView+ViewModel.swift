import Combine
import SwiftUI
import UI
import Integration

extension MapView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        @Published var path: NavigationRoute = .init()

        private var cancellables: Set<AnyCancellable> = []
        let accountService: AccountServiceProtocol

        init(accountService: AccountServiceProtocol) {
            self.accountService = accountService
        }

        func createLocation(_ xCoord: Double, _ yCoord: Double) {
            Task {
                await self.accountService.createLocation(location: Location(id: "test", name: "test", xCoord: String(xCoord), yCoord: String(yCoord)))
            }
        }

        func listLocation() {
            Task {
                await self.accountService.queryLocation()
            }
        }

        func updateLocation(_ xCoord: Double, _ yCoord: Double) {
            print(xCoord, yCoord)
            Task {
                await self.accountService.updateLocation(location: Location(id: "test", name: "test", xCoord: String(xCoord), yCoord: String(yCoord)))
            }
        }
    }
}
