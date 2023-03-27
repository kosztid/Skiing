import Combine
import SwiftUI
import UI
import GoogleMaps
import Integration

extension MapView {
    final class ViewModel: ObservableObject, NavigationViewModel {
        private var cancellables: Set<AnyCancellable> = []

        let accountService: AccountServiceProtocol
        var locationManager = CLLocationManager()
        var locationTimer: Timer?

        @Published var path: NavigationRoute = .init()
        @Published var cameraPos: GMSCameraPosition

        init(accountService: AccountServiceProtocol) {
            self.accountService = accountService
            self.cameraPos = .init(
                latitude: self.locationManager.location?.coordinate.latitude ?? 1,
                longitude: self.locationManager.location?.coordinate.longitude ?? 1,
                zoom: 14
            )
            Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(updateLocation), userInfo: nil, repeats: true)
        }

        func createLocation() {
            Task {
                await self.accountService.createLocation(location: Location(id: "test", name: "test", xCoord: String(locationManager.location?.coordinate.latitude ?? 0), yCoord: String(locationManager.location?.coordinate.longitude ?? 0)))
            }
        }

        func listLocation() {
            Task {
                await self.accountService.queryLocation()
            }
        }

        @objc
        func updateLocation() {
            Task {
                await self.accountService.updateLocation(location: Location(id: "test", name: "test", xCoord: String(locationManager.location?.coordinate.latitude ?? 0), yCoord: String(locationManager.location?.coordinate.longitude ?? 0)))
            }
        }
    }
}
