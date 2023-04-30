// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "b96e212f4121aa4226e3ab337de476a6"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: CurrentPosition.self)
    ModelRegistry.register(modelType: UserfriendList.self)
    ModelRegistry.register(modelType: FriendRequest.self)
  }
}