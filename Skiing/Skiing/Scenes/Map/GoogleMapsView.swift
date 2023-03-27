import GoogleMaps
import SwiftUI
import Integration

struct GoogleMapsView: UIViewRepresentable {
    class Coordinator: NSObject, GMSMapViewDelegate {
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
        view.delegate = context.coordinator

        return view
    }

    func updateUIView(_ view: GMSMapView, context: Context) {
        if cameraPos != view.camera {
            if context.transaction.animation != nil {
                view.animate(with: GMSCameraUpdate.setCamera(cameraPos))
            } else {
                view.camera = cameraPos
            }
        }
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
