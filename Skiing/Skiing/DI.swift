import Factory

extension Container {
    enum Skiing {
        static let viewModel = Factory {
            SkiingView.ViewModel()
        }

        static let view = Factory {
            SkiingView(
                viewModel: viewModel()
            )
        }
    }
}
