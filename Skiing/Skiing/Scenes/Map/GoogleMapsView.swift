import GoogleMaps
import SwiftUI
import Integration

struct GoogleMapsView: UIViewRepresentable {
    class Coordinator: NSObject {
    }

    let accountService: AccountServiceProtocol

    @Binding var cameraPos: GMSCameraPosition

    func makeUIView(context: Context) -> GMSMapView {
        GMSServices.setMetalRendererEnabled(true)
        let view = GMSMapView.map(
            withFrame: .zero,
            camera: cameraPos
        )
        view.isMyLocationEnabled = true

        return view
    }

    func updateUIView(_ view: GMSMapView, context: Context) {
        view.animate(with: GMSCameraUpdate.setCamera(cameraPos))
        cameraPos = view.camera
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    public init(
        cameraPos: Binding<GMSCameraPosition>,
        service: AccountServiceProtocol
    ) {
        self._cameraPos = cameraPos
        self.accountService = service
    }
}
