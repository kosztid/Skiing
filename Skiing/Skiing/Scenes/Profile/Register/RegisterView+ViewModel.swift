import SwiftUI

extension RegisterView {
    final class ViewModel: ObservableObject {
        @Published var userName: String = ""
        @Published var password: String = ""

        func register() {
        }
    }
}
