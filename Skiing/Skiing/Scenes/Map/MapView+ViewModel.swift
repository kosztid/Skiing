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
        @Published var markers: [GMSMarker]

        init(accountService: AccountServiceProtocol) {
            self.accountService = accountService
            self.cameraPos = .init(
                latitude: self.locationManager.location?.coordinate.latitude ?? 1,
                longitude: self.locationManager.location?.coordinate.longitude ?? 1,
                zoom: 14
            )
            let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: 47.1873, longitude: 17.60286))
            marker.title = "ME"

            let marker2 = GMSMarker(position: CLLocationCoordinate2D(latitude: 47.1973, longitude: 17.60086))
            marker2.title = "HER"

            self.markers = [marker, marker2]

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
