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

        let dateFormatter: DateFormatter = DateFormatter()
        let accountService: AccountServiceProtocol
        var locationManager = CLLocationManager()
        var locationTimer: Timer?
        var trackTimer: Timer?

        var addX = 0.0
        var addY = 0.0

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
            self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
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
            let id = UUID().uuidString
            self.trackedPath?.tracks?.append(.init(id: id, name: "Path \(id.prefix(4))", startDate: "\(dateFormatter.string(from: Date()))", endDate: "", notes: []))
            self.isTracking = .on
            addX = Double.random(in: 0..<0.001)
            addY = Double.random(in: 0..<0.001)
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
            var current = trackedPath?.tracks?.last
            current?.endDate = dateFormatter.string(from: Date())
            guard let path = current else { return }
            Task {
                await accountService.updateTrackedPath(path)
            }
        }

        @objc
        func trackRoute() {
            guard var modified = self.trackedPath?.tracks else { return }
            var xCoords = modified.last?.xCoords
            var yCoords = modified.last?.yCoords
            xCoords?.append((47.1986 + (addX * Double(trackedPath?.tracks?.last?.xCoords?.count ?? 0))))
            yCoords?.append(17.60286 + Double(trackedPath?.tracks?.last?.yCoords?.count ?? 0) * addY)

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
