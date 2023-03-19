import SwiftUI

// swiftlint:disable:next line_length
public struct RegularTextFieldStyleViewModifier: ViewModifier {
    public struct PlaceholderConfig {
        public let placeholder: String
        public let text: String

        public init(placeholder: String, text: String) {
            self.placeholder = placeholder
            self.text = text
        }
    }

    public let label: String?

    public func body(content: Content) -> some View {
        content
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
            .padding(.horizontal, 12)
            .baseTextFieldStyle()
            .textFieldBorder()
            .label(label)
    }
}

public extension TextField {
    // swiftlint:disable:next function_parameter_count
    func regularTextFieldStyle(
        // swiftlint:disable:next line_length
        label: String?
    ) -> some View{
        modifier(RegularTextFieldStyleViewModifier(
            label: label
        ))
    }
}

public extension ToggleableSecureField {
    // swiftlint:disable:next function_parameter_count
    func regularTextFieldStyle(
        // swiftlint:disable:next line_length
        label: String?
    ) -> some View{
        modifier(RegularTextFieldStyleViewModifier(
            label: label
        ))
    }
}
