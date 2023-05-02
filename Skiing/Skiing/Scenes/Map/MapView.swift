import GoogleMaps
import SwiftUI
import UI

struct MapView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        ZStack {
            ViewFactory.googleMap(
                cameraPos: $viewModel.cameraPos,
                markers: $viewModel.markers,
                trackedPath: $viewModel.trackedPath
            )
            .ignoresSafeArea()
            VStack {
                Button {
                    viewModel.startTracking()
                } label: {
                    Text("StartTracking")
                }

                Button {
                    viewModel.stopTracking()
                } label: {
                    Text("Stop tracking")
                }
            }
        }
        .onChange(of: viewModel.cameraPos) { newValue in
            print(newValue)
        }
        .onChange(of: viewModel.trackedPath) { newValue in
            print(viewModel.trackedPath)
        }
    }
}
