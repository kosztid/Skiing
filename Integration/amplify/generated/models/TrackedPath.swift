// swiftlint:disable all
import Amplify
import Foundation

public struct TrackedPath: Embeddable, Identifiable, Equatable {
    public var id: String
    public var name: String
    public var startDate: String
    public var endDate: String
    public var notes: [String]?
    public var xCoords: [Double]?
    public var yCoords: [Double]?

    public init(id: String, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
        self.id = id
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.notes = notes
        self.xCoords = xCoords
        self.yCoords = yCoords
    }
}
