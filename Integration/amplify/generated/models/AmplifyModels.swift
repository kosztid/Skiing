// swiftlint:disable all
import Amplify
import Foundation

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "57d75332774e2b1c5add0eba83a56746"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: CurrentPosition.self)
  }
}
