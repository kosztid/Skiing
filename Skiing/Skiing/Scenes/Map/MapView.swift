import GoogleMaps
import SwiftUI
import UI

struct MapView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        ZStack {
            ViewFactory.googleMap(
                cameraPos: $viewModel.cameraPos,
                markers: $viewModel.markers
            )
            .ignoresSafeArea()
        }
        .onChange(of: viewModel.cameraPos) { newValue in
            print(newValue)
        }
    }
}
