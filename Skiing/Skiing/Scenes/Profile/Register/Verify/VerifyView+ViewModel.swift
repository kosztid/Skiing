import Integration
import SwiftUI

extension VerifyView {
    final class ViewModel: ObservableObject {
        @Published var verificationCode: String = ""
        @Published var username: String = ""

        private let navigator: RegisterVerificationViewNavigatorProtocol
        private let accountService: AccountServiceProtocol

        func verify() {
            Task {
                await accountService.confirmSignUp(with: verificationCode)
            }
            navigator.verified()
        }

        init(
            navigator: RegisterVerificationViewNavigatorProtocol,
            accountService: AccountServiceProtocol
        ) {
            self.navigator = navigator
            self.accountService = accountService
        }
    }
}
