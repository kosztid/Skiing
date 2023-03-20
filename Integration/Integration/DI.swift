import Factory

public extension Container {
    static let amplifyService = Factory<AccountServiceProtocol>(scope: .shared) {
        AccountService()
    }
}
