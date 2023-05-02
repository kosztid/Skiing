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
                Spacer()
                HStack {
                    if viewModel.isTracking == .off {
                        Spacer()
                        Button {
                            viewModel.startTracking()
                        } label: {
                            Text("Start Tracking")
                        }
                        .buttonStyle(SkiingButtonStyle())
                    } else {
                        if viewModel.isTracking == .on {
                            Button {
                                viewModel.pauseTracking()
                            } label: {
                                Text("Pause")
                            }
                            .buttonStyle(SkiingButtonStyle())

                            Button {
                                viewModel.stopTracking()
                            } label: {
                                Text("Stop")
                            }
                            .buttonStyle(SkiingButtonStyle())
                        } else {
                            Button {
                                viewModel.resumeTracking()
                            } label: {
                                Text("Resume")
                            }
                            .buttonStyle(SkiingButtonStyle())

                            Button {
                                viewModel.stopTracking()
                            } label: {
                                Text("Stop")
                            }
                            .buttonStyle(SkiingButtonStyle())
                        }
                    }
                }
                .padding()
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
