import SwiftUI

public struct SkiingButtonStyle: ButtonStyle {
    private enum Layout {
        static let paddingWidth: CGFloat = 24
        static let compactPaddingWidth: CGFloat = 12
        static let frameHeight: CGFloat = 40
        static let cornerRadius: CGFloat = 20
        static let stroke: CGFloat = 1
    }

    public enum Style {
        case primary
        case secondary
        case secondaryCompact
        case bordered
        case borderedRed
        case imageBordered(Image)

        var foregroundColor: Color {
            switch self {
            case .primary: return Color.white
            case .secondary, .secondaryCompact: return Color.white
            case .bordered: return Color.teal
            case .borderedRed: return Color.red
            case .imageBordered: return Color.black
            }
        }

        var background: Color {
            switch self {
            case .primary: return Color.blue
            case .secondary, .secondaryCompact: return Color.teal
            case .bordered: return Color.black
            case .borderedRed: return Color.black
            case .imageBordered: return Color.black
            }
        }

        var disabledBackground: Color {
            Color.gray
        }

        var disabledForeground: Color {
            Color.gray
        }
    }

    @Environment(\.isEnabled) var isEnabled

    private let style: Style

    public init(style: Style = .primary) {
        self.style = style
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch style {
        case .primary, .secondary:
            plainStyle(configuration)
        case .secondaryCompact:
            plainCompactStyle(configuration)
        case .bordered:
            borderedStyle(configuration)
        case .borderedRed:
            borderedStyle(configuration)
        case .imageBordered(let image):
            imageBorderedStyle(configuration, image: image)
        }
    }

    @ViewBuilder
    private func plainStyle(_ configuration: Configuration) -> some View {
        if isEnabled {
            configuration.label
                .font(.subheadline)
                .padding([.leading, .trailing], Layout.paddingWidth)
                .frame(minHeight: Layout.frameHeight)
                .foregroundColor(style.foregroundColor)
                .background(style.background)
                .cornerRadius(Layout.cornerRadius)
        } else {
            configuration.label
                .font(.subheadline)
                .padding([.leading, .trailing], Layout.paddingWidth)
                .frame(minHeight: Layout.frameHeight)
                .foregroundColor(style.disabledForeground)
                .background(style.disabledBackground)
                .cornerRadius(Layout.cornerRadius)
        }
    }

    @ViewBuilder
    private func plainCompactStyle(_ configuration: Configuration) -> some View {
        if isEnabled {
            configuration.label
                .font(.subheadline)
                .padding([.leading, .trailing], Layout.compactPaddingWidth)
                .foregroundColor(style.foregroundColor)
                .background(style.background)
                .cornerRadius(Layout.cornerRadius)
        } else {
            configuration.label
                .font(.subheadline)
                .padding([.leading, .trailing], Layout.compactPaddingWidth)
                .foregroundColor(style.disabledForeground)
                .background(style.disabledBackground)
                .cornerRadius(Layout.cornerRadius)
        }
    }

    private func borderedStyle(_ configuration: Configuration) -> some View {
        configuration.label
            .font(.subheadline)
            .foregroundColor(style.foregroundColor)
            .padding(.vertical, 10)
            .padding(.horizontal, Layout.paddingWidth)
            .overlay(
                RoundedRectangle(cornerRadius: Layout.cornerRadius)
                    .stroke(style.foregroundColor, lineWidth: Layout.stroke)
            )
    }

    private func imageBorderedStyle(_ configuration: Configuration, image: Image) -> some View {
        HStack {
            image
            configuration.label
            Spacer()
        }
        .foregroundColor(style.foregroundColor)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(style.foregroundColor, lineWidth: Layout.stroke)
        )
    }
}
