import SwiftUI

struct TrackListView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        ZStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.tracks) { track in
                        TrackListItem(
                            track: track,
                            renameAction: {},
                            addNoteAction: {},
                            deleteAction: viewModel.removeTrack,
                            totalDistance: viewModel.calculateDistance(track: track)
                        )
                        .listRowSeparator(.hidden)
                    }
                }
            }
        }
        .onAppear(perform: viewModel.onAppear)
        .navigationBarTitleDisplayMode(.inline)
    }
}
