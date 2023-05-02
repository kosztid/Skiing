import SwiftUI

public class TrackedPathModel: Identifiable, Equatable, ObservableObject {
    public static func == (lhs: TrackedPathModel, rhs: TrackedPathModel) -> Bool {
        lhs.id == rhs.id
    }

    public var id: String
    public var name: String
    public var xCoord: [Double]
    public var yCoord: [Double]

    public init(id: String, name: String, xCoord: [Double] = [], yCoord: [Double] = []) {
        self.id = id
        self.name = name
        self.xCoord = xCoord
        self.yCoord = yCoord
    }
}
