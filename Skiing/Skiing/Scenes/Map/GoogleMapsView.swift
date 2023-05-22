import Combine
import Factory
import GoogleMaps
import Integration
import SwiftUI

struct GoogleMapsView: UIViewRepresentable {
    class Coordinator: NSObject, GMSMapViewDelegate {
        private var cancellables: Set<AnyCancellable> = []

        let accountService: AccountServiceProtocol
        var innerMapView: GMSMapView?
        var trackedPath: [TrackedPath] = []
        var friendLocations: [Location] = []
        var markers: [GMSMarker] = []

        init(
            innerMapView: GMSMapView? = nil
        ) {
            self.innerMapView = innerMapView
            self.accountService = Container.accountService()

            super.init()

            Task {
                await await self.accountService.queryFriendLocations()
            }

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
                    self?.trackedPath = track?.tracks ?? []
                    self?.drawMapItems()
                }
                .store(in: &cancellables)
        }

        func mapView(_ mapView: GMSMapView, didTap overlay: GMSOverlay) {
            print("tapped")
        }

        func drawMapItems() {
            innerMapView?.clear()

            for marker in markers {
                marker.map = innerMapView
            }

            makePolylines()
        }

        func makePolylines() {
            for track in trackedPath where track.tracking {
                let path = GMSMutablePath()
                for index in 0..<(track.xCoords?.count ?? 0) {
                    path.add(CLLocationCoordinate2D(latitude: track.xCoords?[index] ?? 0, longitude: track.yCoords?[index] ?? 0))
                }
                let line = GMSPolyline(path: path)
                line.strokeColor = UIColor.blue
                line.strokeWidth = 3.0
                line.map = innerMapView
                line.isTappable = true
            }
        }

        func makeMarkers() {
            var tempMarkers: [GMSMarker] = []
            friendLocations.forEach { loc in
                tempMarkers.append(
                    GMSMarker(
                        position: CLLocationCoordinate2D(
                            latitude: Double(loc.xCoord ?? "") ?? 0,
                            longitude: Double(loc.yCoord ?? "") ?? 0
                        )
                    )
                )
            }
            self.markers = tempMarkers
            drawMapItems()
        }
    }

    @Binding var cameraPos: GMSCameraPosition

    init(
        cameraPos: Binding<GMSCameraPosition>
    ) {
        self._cameraPos = cameraPos
    }

    func makeUIView(context: Context) -> GMSMapView {
        GMSServices.setMetalRendererEnabled(true)
        let view = GMSMapView.map(
            withFrame: .zero,
            camera: cameraPos
        )
        view.isMyLocationEnabled = true
        view.delegate = context.coordinator
        context.coordinator.innerMapView = view

        return view
    }

    func updateUIView(_ view: GMSMapView, context: Context) {
        if cameraPos != view.camera {
            if context.transaction.animation != nil {
                view.animate(with: GMSCameraUpdate.setCamera(cameraPos))
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}
