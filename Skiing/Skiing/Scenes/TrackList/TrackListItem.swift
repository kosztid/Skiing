import SwiftUI
import Integration

struct TrackListItem: View {
    let track: TrackedPath
    let notes =  ["Note1 description something", "Note2 description something"]
    let totalDistance: Double
    @State var isOpened = true

    var body: some View {
        VStack(spacing: .zero) {
            header
            if isOpened {
                openedSection
            }
        }
        .padding(.horizontal, 16)
    }

    var header: some View {
        HStack {
            Text(track.name)
                .font(.title)
            Spacer()
            VStack(alignment: .trailing) {
                Text("Date")
                    .font(.caption)
                Text("2023.02.13.")
            }
            Button {
                withAnimation {
                    isOpened.toggle()
                }
            } label: {
                Image(systemName: "arrowtriangle.down")
                    .foregroundColor(isOpened ? .gray : .black)
                    .frame(width: 40, height: 40)
                    .rotationEffect(isOpened ? .degrees(180) : .zero)
                    .background(.cyan)
                    .cornerRadius(20)
            }
        }
    }

    var openedSection: some View {
        VStack {
            HStack {
                Text("Total distance moved:")
                Spacer()
                Text("\(totalDistance, specifier: "%.2f") meters")
            }
            .padding(.vertical, 8)
            VStack(alignment: .leading, spacing: .zero) {
                HStack {
                    Text("Notes")
                    Spacer()
                    Button {
//                        open note sheetPopup
                    } label: {
                        Image(systemName: "plus.circle")
                            .foregroundColor(.black)
                    }
                }
                LazyVStack {
                    ForEach(notes, id: \.self) { note in
                        HStack {
                            Text(note)
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct TrackListItem_Previews: PreviewProvider {
    static var previews: some View {
        TrackListItem(track: .init(id: "ID123", name: "Path 123123"), totalDistance: 1000)
    }
}
