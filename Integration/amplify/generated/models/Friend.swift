// swiftlint:disable all
import Amplify
import Foundation

public struct Friend: Embeddable, Identifiable {
  public var id: String
  public var name: String
}
