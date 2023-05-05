// swiftlint:disable all
import Amplify
import Foundation

extension TrackedPath {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case xCoords
    case yCoords
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let trackedPath = TrackedPath.keys
    
    model.pluralName = "TrackedPaths"
    
    model.fields(
      .field(trackedPath.id, is: .required, ofType: .string),
      .field(trackedPath.name, is: .required, ofType: .string),
      .field(trackedPath.xCoords, is: .optional, ofType: .embeddedCollection(of: Double.self)),
      .field(trackedPath.yCoords, is: .optional, ofType: .embeddedCollection(of: Double.self))
    )
    }
}