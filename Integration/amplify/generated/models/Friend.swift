// swiftlint:disable all
import Amplify
import Foundation

public struct Friend: Embeddable {
  var id: String
  var name: String
  var isTracking: Bool
}