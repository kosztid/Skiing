import GoogleMaps
import SwiftUI

struct MapView: View {
    @StateObject var viewModel: ViewModel
    @State var cameraPos: GMSCameraPosition = .init(
        latitude: 47.19860,
        longitude: 16.70276,
        zoom: 14
    )

    var body: some View {
        ViewFactory.googleMap(
            cameraPos: $cameraPos
        )
        .ignoresSafeArea()
    }
}
