import Combine
import SwiftUI
import UI
import GoogleMaps
import Integration

extension MapView {
    enum TrackingState {
        case paused
        case on
        case off
    }
    final class ViewModel: ObservableObject, NavigationViewModel {
        private var cancellables: Set<AnyCancellable> = []

        let accountService: AccountServiceProtocol
        var locationManager = CLLocationManager()
        var locationTimer: Timer?
        var trackTimer: Timer?

        @Published var isTracking = TrackingState.off
        @Published var path: NavigationRoute = .init()
        @Published var friendLocations: [Location] = []
        @Published var friendLocation: Location?
        @Published var cameraPos: GMSCameraPosition
        @Published var markers: [GMSMarker] = []
        @Published var trackedPath: [TrackedPathModel] = []

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
                await self.accountService.queryFriendLocations()
            }
        }

        func startTracking() {
            self.trackTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(trackRoute), userInfo: nil, repeats: true)
//            self.trackedPath.append(TrackedPathModel(id: UUID().uuidString, name: "Path \(self.trackedPath.count)"))
            self.trackedPath.append(TrackedPathModel(id: UUID().uuidString, name: "Path \(self.trackedPath.count)"))
            self.isTracking = .on
        }

        func resumeTracking() {
            self.trackTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(trackRoute), userInfo: nil, repeats: true)
            self.isTracking = .on
        }

        func pauseTracking() {
            self.trackTimer?.invalidate()
            self.trackTimer = nil
            self.isTracking = .paused
        }
        func stopTracking() {
            self.trackTimer?.invalidate()
            self.trackTimer = nil
            self.isTracking = .off
        }

        @objc
        func trackRoute() {
            let modified = self.trackedPath
            var xCoords = modified.last?.xCoords
            var yCoords = modified.last?.yCoords
            xCoords?.append((47.1986 + (0.001 * Double(trackedPath.last?.xCoords.count ?? 0))))
            yCoords?.append(17.60286 + Double(trackedPath.count) * 0.01)

            modified.last?.xCoords = xCoords ?? []
            modified.last?.yCoords = yCoords ?? []

            self.trackedPath = modified
        }

        func stopTimer() {
            self.locationTimer?.invalidate()
        }

        func startTimer() {
            self.locationTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(updateLocation), userInfo: nil, repeats: true)
        }
    }
}
