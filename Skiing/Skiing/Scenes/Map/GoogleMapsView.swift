import GoogleMaps
import Integration
import SwiftUI

struct GoogleMapsView: UIViewRepresentable {
    class Coordinator: NSObject, GMSMapViewDelegate {
    }

    let accountService: AccountServiceProtocol

    @Binding var cameraPos: GMSCameraPosition
    @Binding var markers: [GMSMarker]
    @Binding var trackedPath: [TrackedPath]

    var coordinates: [CLLocationCoordinate2D] = [
        CLLocationCoordinate2D(latitude: 47.1986, longitude: 17.60286),
        CLLocationCoordinate2D(latitude: 47.1786, longitude: 17.62286),
        CLLocationCoordinate2D(latitude: 47.1786, longitude: 17.65286),
        CLLocationCoordinate2D(latitude: 47.2186, longitude: 17.62286)
    ]

    init(
        cameraPos: Binding<GMSCameraPosition>,
        markers: Binding<[GMSMarker]>,
        trackedPath: Binding<[TrackedPath]>,
        service: AccountServiceProtocol
    ) {
        self._cameraPos = cameraPos
        self._markers = markers
        self._trackedPath = trackedPath
        self.accountService = service
    }

    func makeUIView(context: Context) -> GMSMapView {
        GMSServices.setMetalRendererEnabled(true)
        let view = GMSMapView.map(
            withFrame: .zero,
            camera: cameraPos
        )
        view.isMyLocationEnabled = true
        view.delegate = context.coordinator

        return view
    }

    func updateUIView(_ view: GMSMapView, context: Context) {
        if cameraPos != view.camera {
            if context.transaction.animation != nil {
                view.animate(with: GMSCameraUpdate.setCamera(cameraPos))
            }
        }

        view.clear()

        for marker in markers {
            marker.map = view
        }

        for track in trackedPath where track.tracking {
            let path = GMSMutablePath()
            for index in 0..<(track.xCoords?.count ?? 0) {
                path.add(CLLocationCoordinate2D(latitude: track.xCoords?[index] ?? 0, longitude: track.yCoords?[index] ?? 0))
            }
            let line = GMSPolyline(path: path)
            line.strokeColor = UIColor.blue
            line.strokeWidth = 3.0
            line.map = view
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}
