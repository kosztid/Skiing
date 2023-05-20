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
        @Published var trackedPath: TrackedPathModel?

        @Published var track: [TrackedPath] = []

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

            accountService.trackedPathPublisher
                .sink { _ in
                } receiveValue: { [weak self] track in
                    self?.track = track?.tracks ?? []
                    self?.trackedPath = track
                }
                .store(in: &cancellables)

            Task {
                await accountService.queryTrackedPaths()
            }

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
                await self.accountService.createUserTrackedPaths()
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
            self.trackedPath?.tracks?.append(.init(id: UUID().uuidString, name: "Path \(UUID().uuidString)"))
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
            guard let path = trackedPath?.tracks?.last else { return }
            Task {
                await accountService.updateTrackedPath(path)
            }
        }

        @objc
        func trackRoute() {
            guard var modified = self.trackedPath?.tracks else { return }
            var xCoords = modified.last?.xCoords
            var yCoords = modified.last?.yCoords
            xCoords?.append((47.1986 + (0.001 * Double(trackedPath?.tracks?.last?.xCoords?.count ?? 0))))
            yCoords?.append(17.60286 + Double(trackedPath?.tracks?.last?.yCoords?.count ?? 0) * 0.01)

            modified[modified.count - 1].xCoords = xCoords ?? []
            modified[modified.count - 1].yCoords = yCoords ?? []

            self.trackedPath?.tracks = modified
            self.track = modified
        }

        func stopTimer() {
            self.locationTimer?.invalidate()
        }

        func startTimer() {
            self.locationTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(updateLocation), userInfo: nil, repeats: true)
        }
    }
}
