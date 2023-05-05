// swiftlint:disable all
import Amplify
import Foundation

public struct TrackedPath: Embeddable, Identifiable, Equatable {
  public var id: String
  public var name: String
  public var xCoords: [Double]?
  public var yCoords: [Double]?

    public init(id: String, name: String, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
        self.id = id
        self.name = name
        self.xCoords = xCoords
        self.yCoords = yCoords
    }
}
