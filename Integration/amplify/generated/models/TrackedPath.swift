// swiftlint:disable all
import Amplify
import Foundation

public struct TrackedPath: Embeddable {
  var id: String
  var name: String
  var xCoords: [Double]?
  var yCoords: [Double]?
}