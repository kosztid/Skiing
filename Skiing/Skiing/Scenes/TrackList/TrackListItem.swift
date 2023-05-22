import Integration
import SwiftUI
import UI

struct TrackListItem: View {
    let dateFormatter: DateFormatter
    let formatter: DateComponentsFormatter
    var track: TrackedPath
    let notes = [
        "Note1 description something",
        "Note2 description something"
    ]
    let updateAction: (_ trackedPath: TrackedPath) -> Void
    let noteAction: (_ note: String, _ trackedPath: TrackedPath) -> Void
    let deleteAction: (_ trackedPath: TrackedPath) -> Void
    let totalDistance: Double
    var startDate: Date
    var endDate: Date
    var date: String
    @State var isOpened = false
    @State var note = ""
    @State var name = ""
    @State var isShowingOnMap = false
    @State private var showingAlert = false
    @State private var showingDeleteAlert = false
    @State private var showingRenameAlert = false

    var body: some View {
        VStack(spacing: .zero) {
            header
                .padding(.bottom, 8)
            if isOpened {
                openedSection
            }
        }
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 1)
        )
        .padding(8)
    }

    var header: some View {
        HStack {
            Text(track.name)
            Spacer()
            VStack(alignment: .trailing) {
                Text("Date")
                    .font(.caption)
                Text(track.startDate)
            }
            Button {
                withAnimation {
                    isOpened.toggle()
                }
            } label: {
                Image(systemName: isOpened ? "xmark" : "arrowtriangle.down")
                    .foregroundColor(isOpened ? .white : .black)
                    .frame(width: 40, height: 40)
                    .rotationEffect(isOpened ? .degrees(180) : .zero)
                    .background(.teal)
                    .cornerRadius(20)
            }
        }
        .background()
        .alert("Rename run...", isPresented: $showingRenameAlert) {
            TextField("Enter the new name", text: $name)
                .autocorrectionDisabled(true)
            Button("Rename") {
                var newTrack = track
                newTrack.name = name
                updateAction(newTrack)
                name = ""
                showingRenameAlert.toggle()
            }
            Button(
                "Cancel",
                role: .cancel
            ) {
                name = ""
                showingRenameAlert.toggle()
            }
        }
        .alert("Add Note", isPresented: $showingAlert) {
            TextField("Enter note description", text: $note)
                .autocorrectionDisabled(true)
            Button("Add") {
                noteAction(note, track)
                note = ""
                showingAlert.toggle()
            }
            Button(
                "Cancel",
                role: .cancel
            ) {
                note = ""
                showingAlert.toggle()
            }
        }
        .alert("Are you sure to delete?", isPresented: $showingDeleteAlert) {
            Button(
                "Yes",
                role: .destructive
            ) {
                deleteAction(self.track)
                showingDeleteAlert.toggle()
            }
            Button(
                "Cancel",
                role: .cancel
            ) {
                showingDeleteAlert.toggle()
            }
        }
    }

    var openedSection: some View {
        VStack(spacing: .zero) {
            Divider()
                .padding(.vertical, 8)
            HStack {
                Text("Total distance moved:")
                Spacer()
                Text("\(totalDistance, specifier: "%.2f") meters")
            }
            .padding(.bottom, 4)
            HStack {
                Text("Duration:")
                Spacer()
                Text("\(date)")
            }
            .padding(.bottom, 8)
            HStack {
                Text("Show on Map")
                Spacer()
                Toggle(isOn: $isShowingOnMap) {
                }
            }
            VStack(spacing: .zero) {
                Divider()
                    .padding(.vertical, 8)
                HStack {
                    Text("Notes")
                        .padding(.bottom, 8)
                    Spacer()
                    Button {
                        showingAlert.toggle()
                    } label: {
                        Text("Add note")
                            .foregroundColor(.black)
                    }
                    .buttonStyle(SkiingButtonStyle(style: .bordered))
                }
                LazyVStack {
                    ForEach(track.notes ?? [], id: \.self) { note in
                        HStack {
                            Text(note)
                            Spacer()
                        }
                    }
                }
                Divider()
                    .padding(.vertical, 8)
                HStack {
                    Button {
                        name = track.name
                        showingRenameAlert.toggle()
                    } label: {
                        Text("Rename run")
                            .frame(width: 120)
                    }
                    .buttonStyle(SkiingButtonStyle(style: .secondary))
                    .padding(.top, 8)
                    Button {
                        showingDeleteAlert.toggle()
                    } label: {
                        Text("Delete run")
                            .frame(width: 120)
                    }
                    .buttonStyle(SkiingButtonStyle(style: .borderedRed))
                    .padding(.top, 8)
                }
            }
        }
        .onChange(of: isShowingOnMap) { newValue in
            var newTrack = track
            newTrack.tracking = newValue
            updateAction(newTrack)
        }
        .onAppear {
            print(track)
            self.isShowingOnMap = track.tracking
        }
    }

    init(
        track: TrackedPath,
        updateAction: @escaping (_ trackedPath: TrackedPath) -> Void,
        noteAction: @escaping (_ note: String, _ trackedPath: TrackedPath) -> Void,
        deleteAction: @escaping (_ trackedPath: TrackedPath) -> Void,
        totalDistance: Double,
        isOpened: Bool = false,
        note: String = "",
        name: String = "",
        showingAlert: Bool = false,
        showingRenameAlert: Bool = false
    ) {
        self.track = track
        self.updateAction = updateAction
        self.noteAction = noteAction
        self.deleteAction = deleteAction
        self.totalDistance = totalDistance
        self.startDate = Date()
        self.endDate = Date()
        self.date = ""
        self.dateFormatter = DateFormatter()
        self.formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        self.isOpened = isOpened
        self.note = note
        self.name = name
        self.showingAlert = showingAlert
        self.showingRenameAlert = showingRenameAlert
        self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.startDate = dateFormatter.date(from: track.startDate) ?? Date()
        self.endDate = dateFormatter.date(from: track.endDate) ?? Date()
        self.date = formatter.string(from: startDate.distance(to: endDate)) ?? ""
    }
}

struct TrackListItem_Previews: PreviewProvider {
    static var previews: some View {
        TrackListItem(
            track: .init(
                id: "ID123",
                name: "Path 123123",
                startDate: "2023-05-21 11:15:55",
                endDate: "2023-05-21 12:19:52",
                notes: ["Note1 description something", "Note2 description something"]
            ),
            updateAction: { _ in
            }, noteAction: { _, _  in
            }, deleteAction: { _ in
            },
            totalDistance: 1000
        )
    }
}
