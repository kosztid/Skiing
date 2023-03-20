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

    enum TabBar  {
        static let view = Factory {
            TabBarNavigator()
        }
    }

    enum Login {
        static let view = ParameterFactory { navigator in
            LoginView(
            viewModel: viewModel(navigator)
            )
        }

        static let viewModel = ParameterFactory { navigator in
            LoginView.ViewModel(
                navigator: navigator,
                accountService: accountService()
            )
        }
    }

    enum Profile {
        static let view = ParameterFactory { navigator in
            ProfileView(
                viewModel: viewModel(navigator)
            )
        }

        static let viewModel = ParameterFactory { navigator in
            ProfileView.ViewModel(
                navigator: navigator,
                accountService: accountService()
            )
        }
        
        static let navigator = Factory {
            ProfileNavigator()
        }
    }
}
