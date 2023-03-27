import GoogleMaps
import SwiftUI
import UI

struct MapView: View {
    @StateObject var viewModel: ViewModel
    @State var cameraPos: GMSCameraPosition = .init(
        latitude: 47.19860,
        longitude: 16.71276,
        zoom: 14
    )

    var body: some View {
        ZStack {
            ViewFactory.googleMap(
                cameraPos: $cameraPos
            )
            .ignoresSafeArea()
            VStack {
                Button {
                    viewModel.createLocation(cameraPos.target.latitude, cameraPos.target.longitude)
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
                    viewModel.updateLocation(cameraPos.target.latitude, cameraPos.target.longitude)
                } label: {
                    Text("update LOCATION")
                }
                .buttonStyle(SkiingButtonStyle())
            }
        }
    }
}
