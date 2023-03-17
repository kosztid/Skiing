import SwiftUI
import UI

struct SkiingView: View {
    @StateObject var viewModel: ViewModel

    var body: some View {
        VStack {
            TestView()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}
