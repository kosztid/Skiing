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
        @Published var friendLocations: [Location] = []
        @Published var friendLocation: Location?
        @Published var cameraPos: GMSCameraPosition
        @Published var markers: [GMSMarker] = []

        init(accountService: AccountServiceProtocol) {
            self.accountService = accountService
            self.cameraPos = .init(
                latitude: self.locationManager.location?.coordinate.latitude ?? 1,
                longitude: self.locationManager.location?.coordinate.longitude ?? 1,
                zoom: 13
            )

            self.startTimer()

            accountService.friendPositionsPublisher
                .sink { _ in
                } receiveValue: { [weak self] loc in
                    self?.friendLocations = loc
                    self?.makeMarkers()
                }
                .store(in: &cancellables)

        }

        func makeMarkers() {
            var tempMarkers: [GMSMarker] = []
            friendLocations.forEach { loc in
                tempMarkers.append(GMSMarker(position: CLLocationCoordinate2D(latitude: Double(loc.xCoord ?? "") ?? 0, longitude: Double(loc.yCoord ?? "") ?? 0)))
            }
            self.markers = tempMarkers
        }

        func confirm() {
            Task {
                await self.accountService.confirm()
            }
        }

        func queryLocation() {
            Task {
                await self.accountService.queryLocation()
            }
        }

        @objc
        func updateLocation() {
            Task {
                await self.accountService.updateLocation(xCoord: String(locationManager.location?.coordinate.latitude ?? 0), yCoord: String(locationManager.location?.coordinate.longitude ?? 0))
                await self.accountService.queryFriendLocations(userIds: ["location_c0598ecb-9bff-47b4-90fe-4c6e5888db12"])
            }
        }

        func stopTimer() {
            self.locationTimer?.invalidate()
        }

        func startTimer() {
            Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(updateLocation), userInfo: nil, repeats: true)
        }
    }
}
