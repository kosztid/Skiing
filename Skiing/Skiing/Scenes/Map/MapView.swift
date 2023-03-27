import GoogleMaps
import SwiftUI
import UI

struct MapView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        ZStack {
            ViewFactory.googleMap(
                cameraPos: $viewModel.cameraPos
            )
            .ignoresSafeArea()
            VStack {
                Button {
                    viewModel.startTimer()
                } label: {
                    Text("START LOCATION")
                }
                .buttonStyle(SkiingButtonStyle())
                Button {
                    viewModel.stopTimer()
                } label: {
                    Text("STOP LOCATION")
                }
                .buttonStyle(SkiingButtonStyle())
            }
        }
        .onChange(of: viewModel.cameraPos) { newValue in
            print(newValue)
        }
    }
}
