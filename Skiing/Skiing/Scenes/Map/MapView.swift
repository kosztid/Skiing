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
                    viewModel.createLocation()
                } label: {
                    Text("ADD LOCATION")
                }
                .buttonStyle(SkiingButtonStyle())
                Button {
                    viewModel.listLocation()
                } label: {
                    Text("PRINT LOCATION")
                }
                .buttonStyle(SkiingButtonStyle())
                Button {
                    viewModel.updateLocation()
                } label: {
                    Text("update LOCATION")
                }
                .buttonStyle(SkiingButtonStyle())
            }
        }
        .onChange(of: viewModel.cameraPos) { newValue in
            print(newValue)
        }
    }
}
