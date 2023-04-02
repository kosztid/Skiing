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
        }

        func addFriend() {
            Task {
                await self.accountService.addFriend()
            }
        }
        func createLocation() {
            Task {
                await self.accountService.createLocation(xCoord: String(locationManager.location?.coordinate.latitude ?? 0), yCoord: String(locationManager.location?.coordinate.longitude ?? 0))
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
                await self.accountService.updateLocation(xCoord: String(locationManager.location?.coordinate.latitude ?? 0), yCoord: String(locationManager.location?.coordinate.longitude ?? 0))
            }
        }

        func stopTimer() {
            self.locationTimer?.invalidate()
        }

        func startTimer() {
            Timer.scheduledTimer(timeInterval: 15, target: self, selector: #selector(updateLocation), userInfo: nil, repeats: true)
        }
    }
}
