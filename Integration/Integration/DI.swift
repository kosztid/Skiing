import Factory

public extension Container {
    static let amplifyService = Factory<AmplifyServiceProtocol>(scope: .shared) {
        AmplifyService()
    }
}
