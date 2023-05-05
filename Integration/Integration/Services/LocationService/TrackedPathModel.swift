import SwiftUI

public class TrackedPathModel: Identifiable, Equatable, ObservableObject {
    public static func == (lhs: TrackedPathModel, rhs: TrackedPathModel) -> Bool {
        lhs.id == rhs.id
    }

    public var id: String
    public var name: String
    public var xCoords: [Double]
    public var yCoords: [Double]

    public init(id: String, name: String, xCoord: [Double] = [], yCoord: [Double] = []) {
        self.id = id
        self.name = name
        self.xCoords = xCoord
        self.yCoords = yCoord
    }
}
