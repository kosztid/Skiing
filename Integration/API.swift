//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateCurrentPositionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, xCoord: String? = nil, yCoord: String? = nil) {
    graphQLMap = ["id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var xCoord: String? {
    get {
      return graphQLMap["xCoord"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xCoord")
    }
  }

  public var yCoord: String? {
    get {
      return graphQLMap["yCoord"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "yCoord")
    }
  }
}

public struct ModelCurrentPositionConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, xCoord: ModelStringInput? = nil, yCoord: ModelStringInput? = nil, and: [ModelCurrentPositionConditionInput?]? = nil, or: [ModelCurrentPositionConditionInput?]? = nil, not: ModelCurrentPositionConditionInput? = nil) {
    graphQLMap = ["name": name, "xCoord": xCoord, "yCoord": yCoord, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var xCoord: ModelStringInput? {
    get {
      return graphQLMap["xCoord"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xCoord")
    }
  }

  public var yCoord: ModelStringInput? {
    get {
      return graphQLMap["yCoord"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "yCoord")
    }
  }

  public var and: [ModelCurrentPositionConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelCurrentPositionConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelCurrentPositionConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelCurrentPositionConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelCurrentPositionConditionInput? {
    get {
      return graphQLMap["not"] as! ModelCurrentPositionConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateCurrentPositionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, xCoord: String? = nil, yCoord: String? = nil) {
    graphQLMap = ["id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var xCoord: String? {
    get {
      return graphQLMap["xCoord"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xCoord")
    }
  }

  public var yCoord: String? {
    get {
      return graphQLMap["yCoord"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "yCoord")
    }
  }
}

public struct DeleteCurrentPositionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserfriendListInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, friends: [FriendInput]? = nil) {
    graphQLMap = ["id": id, "friends": friends]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var friends: [FriendInput]? {
    get {
      return graphQLMap["friends"] as! [FriendInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friends")
    }
  }
}

public struct FriendInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, isTracking: Bool) {
    graphQLMap = ["id": id, "name": name, "isTracking": isTracking]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var isTracking: Bool {
    get {
      return graphQLMap["isTracking"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isTracking")
    }
  }
}

public struct ModelUserfriendListConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(and: [ModelUserfriendListConditionInput?]? = nil, or: [ModelUserfriendListConditionInput?]? = nil, not: ModelUserfriendListConditionInput? = nil) {
    graphQLMap = ["and": and, "or": or, "not": not]
  }

  public var and: [ModelUserfriendListConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserfriendListConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserfriendListConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserfriendListConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserfriendListConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserfriendListConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUserfriendListInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, friends: [FriendInput]? = nil) {
    graphQLMap = ["id": id, "friends": friends]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var friends: [FriendInput]? {
    get {
      return graphQLMap["friends"] as! [FriendInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friends")
    }
  }
}

public struct DeleteUserfriendListInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserTrackedPathsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, tracks: [TrackedPathInput]? = nil) {
    graphQLMap = ["id": id, "tracks": tracks]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var tracks: [TrackedPathInput]? {
    get {
      return graphQLMap["tracks"] as! [TrackedPathInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tracks")
    }
  }
}

public struct TrackedPathInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
    graphQLMap = ["id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var startDate: String {
    get {
      return graphQLMap["startDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var endDate: String {
    get {
      return graphQLMap["endDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var notes: [String]? {
    get {
      return graphQLMap["notes"] as! [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notes")
    }
  }

  public var xCoords: [Double]? {
    get {
      return graphQLMap["xCoords"] as! [Double]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xCoords")
    }
  }

  public var yCoords: [Double]? {
    get {
      return graphQLMap["yCoords"] as! [Double]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "yCoords")
    }
  }
}

public struct ModelUserTrackedPathsConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(and: [ModelUserTrackedPathsConditionInput?]? = nil, or: [ModelUserTrackedPathsConditionInput?]? = nil, not: ModelUserTrackedPathsConditionInput? = nil) {
    graphQLMap = ["and": and, "or": or, "not": not]
  }

  public var and: [ModelUserTrackedPathsConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserTrackedPathsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserTrackedPathsConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserTrackedPathsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserTrackedPathsConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserTrackedPathsConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUserTrackedPathsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, tracks: [TrackedPathInput]? = nil) {
    graphQLMap = ["id": id, "tracks": tracks]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var tracks: [TrackedPathInput]? {
    get {
      return graphQLMap["tracks"] as! [TrackedPathInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tracks")
    }
  }
}

public struct DeleteUserTrackedPathsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateFriendRequestInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, senderEmail: String, sender: FriendInput, recipient: String) {
    graphQLMap = ["id": id, "senderEmail": senderEmail, "sender": sender, "recipient": recipient]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderEmail: String {
    get {
      return graphQLMap["senderEmail"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderEmail")
    }
  }

  public var sender: FriendInput {
    get {
      return graphQLMap["sender"] as! FriendInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sender")
    }
  }

  public var recipient: String {
    get {
      return graphQLMap["recipient"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recipient")
    }
  }
}

public struct ModelFriendRequestConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(senderEmail: ModelStringInput? = nil, recipient: ModelStringInput? = nil, and: [ModelFriendRequestConditionInput?]? = nil, or: [ModelFriendRequestConditionInput?]? = nil, not: ModelFriendRequestConditionInput? = nil) {
    graphQLMap = ["senderEmail": senderEmail, "recipient": recipient, "and": and, "or": or, "not": not]
  }

  public var senderEmail: ModelStringInput? {
    get {
      return graphQLMap["senderEmail"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderEmail")
    }
  }

  public var recipient: ModelStringInput? {
    get {
      return graphQLMap["recipient"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recipient")
    }
  }

  public var and: [ModelFriendRequestConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelFriendRequestConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelFriendRequestConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelFriendRequestConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelFriendRequestConditionInput? {
    get {
      return graphQLMap["not"] as! ModelFriendRequestConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateFriendRequestInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, senderEmail: String? = nil, sender: FriendInput? = nil, recipient: String? = nil) {
    graphQLMap = ["id": id, "senderEmail": senderEmail, "sender": sender, "recipient": recipient]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderEmail: String? {
    get {
      return graphQLMap["senderEmail"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderEmail")
    }
  }

  public var sender: FriendInput? {
    get {
      return graphQLMap["sender"] as! FriendInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sender")
    }
  }

  public var recipient: String? {
    get {
      return graphQLMap["recipient"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recipient")
    }
  }
}

public struct DeleteFriendRequestInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelCurrentPositionFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, xCoord: ModelStringInput? = nil, yCoord: ModelStringInput? = nil, and: [ModelCurrentPositionFilterInput?]? = nil, or: [ModelCurrentPositionFilterInput?]? = nil, not: ModelCurrentPositionFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var xCoord: ModelStringInput? {
    get {
      return graphQLMap["xCoord"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xCoord")
    }
  }

  public var yCoord: ModelStringInput? {
    get {
      return graphQLMap["yCoord"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "yCoord")
    }
  }

  public var and: [ModelCurrentPositionFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelCurrentPositionFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelCurrentPositionFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelCurrentPositionFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelCurrentPositionFilterInput? {
    get {
      return graphQLMap["not"] as! ModelCurrentPositionFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelUserfriendListFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, and: [ModelUserfriendListFilterInput?]? = nil, or: [ModelUserfriendListFilterInput?]? = nil, not: ModelUserfriendListFilterInput? = nil) {
    graphQLMap = ["id": id, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var and: [ModelUserfriendListFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserfriendListFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserfriendListFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserfriendListFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserfriendListFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserfriendListFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelUserTrackedPathsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, and: [ModelUserTrackedPathsFilterInput?]? = nil, or: [ModelUserTrackedPathsFilterInput?]? = nil, not: ModelUserTrackedPathsFilterInput? = nil) {
    graphQLMap = ["id": id, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var and: [ModelUserTrackedPathsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserTrackedPathsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserTrackedPathsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserTrackedPathsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserTrackedPathsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserTrackedPathsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelFriendRequestFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, senderEmail: ModelStringInput? = nil, recipient: ModelStringInput? = nil, and: [ModelFriendRequestFilterInput?]? = nil, or: [ModelFriendRequestFilterInput?]? = nil, not: ModelFriendRequestFilterInput? = nil) {
    graphQLMap = ["id": id, "senderEmail": senderEmail, "recipient": recipient, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderEmail: ModelStringInput? {
    get {
      return graphQLMap["senderEmail"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderEmail")
    }
  }

  public var recipient: ModelStringInput? {
    get {
      return graphQLMap["recipient"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recipient")
    }
  }

  public var and: [ModelFriendRequestFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelFriendRequestFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelFriendRequestFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelFriendRequestFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelFriendRequestFilterInput? {
    get {
      return graphQLMap["not"] as! ModelFriendRequestFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelSubscriptionCurrentPositionFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, name: ModelSubscriptionStringInput? = nil, xCoord: ModelSubscriptionStringInput? = nil, yCoord: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionCurrentPositionFilterInput?]? = nil, or: [ModelSubscriptionCurrentPositionFilterInput?]? = nil) {
    graphQLMap = ["id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["name"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var xCoord: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["xCoord"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xCoord")
    }
  }

  public var yCoord: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["yCoord"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "yCoord")
    }
  }

  public var and: [ModelSubscriptionCurrentPositionFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionCurrentPositionFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionCurrentPositionFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionCurrentPositionFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, `in`: [GraphQLID?]? = nil, notIn: [GraphQLID?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [GraphQLID?]? {
    get {
      return graphQLMap["in"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [GraphQLID?]? {
    get {
      return graphQLMap["notIn"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, `in`: [String?]? = nil, notIn: [String?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [String?]? {
    get {
      return graphQLMap["in"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [String?]? {
    get {
      return graphQLMap["notIn"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionUserfriendListFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, and: [ModelSubscriptionUserfriendListFilterInput?]? = nil, or: [ModelSubscriptionUserfriendListFilterInput?]? = nil) {
    graphQLMap = ["id": id, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var and: [ModelSubscriptionUserfriendListFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionUserfriendListFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionUserfriendListFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionUserfriendListFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionUserTrackedPathsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, and: [ModelSubscriptionUserTrackedPathsFilterInput?]? = nil, or: [ModelSubscriptionUserTrackedPathsFilterInput?]? = nil) {
    graphQLMap = ["id": id, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var and: [ModelSubscriptionUserTrackedPathsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionUserTrackedPathsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionUserTrackedPathsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionUserTrackedPathsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionFriendRequestFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, senderEmail: ModelSubscriptionStringInput? = nil, recipient: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionFriendRequestFilterInput?]? = nil, or: [ModelSubscriptionFriendRequestFilterInput?]? = nil) {
    graphQLMap = ["id": id, "senderEmail": senderEmail, "recipient": recipient, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderEmail: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["senderEmail"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderEmail")
    }
  }

  public var recipient: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["recipient"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recipient")
    }
  }

  public var and: [ModelSubscriptionFriendRequestFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionFriendRequestFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionFriendRequestFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionFriendRequestFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public final class CreateCurrentPositionMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateCurrentPosition($input: CreateCurrentPositionInput!, $condition: ModelCurrentPositionConditionInput) {\n  createCurrentPosition(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateCurrentPositionInput
  public var condition: ModelCurrentPositionConditionInput?

  public init(input: CreateCurrentPositionInput, condition: ModelCurrentPositionConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createCurrentPosition", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createCurrentPosition: CreateCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createCurrentPosition": createCurrentPosition.flatMap { $0.snapshot }])
    }

    public var createCurrentPosition: CreateCurrentPosition? {
      get {
        return (snapshot["createCurrentPosition"] as? Snapshot).flatMap { CreateCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createCurrentPosition")
      }
    }

    public struct CreateCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateCurrentPositionMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateCurrentPosition($input: UpdateCurrentPositionInput!, $condition: ModelCurrentPositionConditionInput) {\n  updateCurrentPosition(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateCurrentPositionInput
  public var condition: ModelCurrentPositionConditionInput?

  public init(input: UpdateCurrentPositionInput, condition: ModelCurrentPositionConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateCurrentPosition", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateCurrentPosition: UpdateCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateCurrentPosition": updateCurrentPosition.flatMap { $0.snapshot }])
    }

    public var updateCurrentPosition: UpdateCurrentPosition? {
      get {
        return (snapshot["updateCurrentPosition"] as? Snapshot).flatMap { UpdateCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateCurrentPosition")
      }
    }

    public struct UpdateCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteCurrentPositionMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteCurrentPosition($input: DeleteCurrentPositionInput!, $condition: ModelCurrentPositionConditionInput) {\n  deleteCurrentPosition(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteCurrentPositionInput
  public var condition: ModelCurrentPositionConditionInput?

  public init(input: DeleteCurrentPositionInput, condition: ModelCurrentPositionConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteCurrentPosition", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteCurrentPosition: DeleteCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteCurrentPosition": deleteCurrentPosition.flatMap { $0.snapshot }])
    }

    public var deleteCurrentPosition: DeleteCurrentPosition? {
      get {
        return (snapshot["deleteCurrentPosition"] as? Snapshot).flatMap { DeleteCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteCurrentPosition")
      }
    }

    public struct DeleteCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateUserfriendListMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUserfriendList($input: CreateUserfriendListInput!, $condition: ModelUserfriendListConditionInput) {\n  createUserfriendList(input: $input, condition: $condition) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserfriendListInput
  public var condition: ModelUserfriendListConditionInput?

  public init(input: CreateUserfriendListInput, condition: ModelUserfriendListConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUserfriendList", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUserfriendList: CreateUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUserfriendList": createUserfriendList.flatMap { $0.snapshot }])
    }

    public var createUserfriendList: CreateUserfriendList? {
      get {
        return (snapshot["createUserfriendList"] as? Snapshot).flatMap { CreateUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUserfriendList")
      }
    }

    public struct CreateUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class UpdateUserfriendListMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUserfriendList($input: UpdateUserfriendListInput!, $condition: ModelUserfriendListConditionInput) {\n  updateUserfriendList(input: $input, condition: $condition) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserfriendListInput
  public var condition: ModelUserfriendListConditionInput?

  public init(input: UpdateUserfriendListInput, condition: ModelUserfriendListConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUserfriendList", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUserfriendList: UpdateUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUserfriendList": updateUserfriendList.flatMap { $0.snapshot }])
    }

    public var updateUserfriendList: UpdateUserfriendList? {
      get {
        return (snapshot["updateUserfriendList"] as? Snapshot).flatMap { UpdateUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUserfriendList")
      }
    }

    public struct UpdateUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class DeleteUserfriendListMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUserfriendList($input: DeleteUserfriendListInput!, $condition: ModelUserfriendListConditionInput) {\n  deleteUserfriendList(input: $input, condition: $condition) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserfriendListInput
  public var condition: ModelUserfriendListConditionInput?

  public init(input: DeleteUserfriendListInput, condition: ModelUserfriendListConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUserfriendList", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUserfriendList: DeleteUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUserfriendList": deleteUserfriendList.flatMap { $0.snapshot }])
    }

    public var deleteUserfriendList: DeleteUserfriendList? {
      get {
        return (snapshot["deleteUserfriendList"] as? Snapshot).flatMap { DeleteUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUserfriendList")
      }
    }

    public struct DeleteUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class CreateUserTrackedPathsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUserTrackedPaths($input: CreateUserTrackedPathsInput!, $condition: ModelUserTrackedPathsConditionInput) {\n  createUserTrackedPaths(input: $input, condition: $condition) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserTrackedPathsInput
  public var condition: ModelUserTrackedPathsConditionInput?

  public init(input: CreateUserTrackedPathsInput, condition: ModelUserTrackedPathsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUserTrackedPaths", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUserTrackedPaths: CreateUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUserTrackedPaths": createUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var createUserTrackedPaths: CreateUserTrackedPath? {
      get {
        return (snapshot["createUserTrackedPaths"] as? Snapshot).flatMap { CreateUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUserTrackedPaths")
      }
    }

    public struct CreateUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class UpdateUserTrackedPathsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUserTrackedPaths($input: UpdateUserTrackedPathsInput!, $condition: ModelUserTrackedPathsConditionInput) {\n  updateUserTrackedPaths(input: $input, condition: $condition) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserTrackedPathsInput
  public var condition: ModelUserTrackedPathsConditionInput?

  public init(input: UpdateUserTrackedPathsInput, condition: ModelUserTrackedPathsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUserTrackedPaths", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUserTrackedPaths: UpdateUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUserTrackedPaths": updateUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var updateUserTrackedPaths: UpdateUserTrackedPath? {
      get {
        return (snapshot["updateUserTrackedPaths"] as? Snapshot).flatMap { UpdateUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUserTrackedPaths")
      }
    }

    public struct UpdateUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class DeleteUserTrackedPathsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUserTrackedPaths($input: DeleteUserTrackedPathsInput!, $condition: ModelUserTrackedPathsConditionInput) {\n  deleteUserTrackedPaths(input: $input, condition: $condition) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserTrackedPathsInput
  public var condition: ModelUserTrackedPathsConditionInput?

  public init(input: DeleteUserTrackedPathsInput, condition: ModelUserTrackedPathsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUserTrackedPaths", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUserTrackedPaths: DeleteUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUserTrackedPaths": deleteUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var deleteUserTrackedPaths: DeleteUserTrackedPath? {
      get {
        return (snapshot["deleteUserTrackedPaths"] as? Snapshot).flatMap { DeleteUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUserTrackedPaths")
      }
    }

    public struct DeleteUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class CreateFriendRequestMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateFriendRequest($input: CreateFriendRequestInput!, $condition: ModelFriendRequestConditionInput) {\n  createFriendRequest(input: $input, condition: $condition) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateFriendRequestInput
  public var condition: ModelFriendRequestConditionInput?

  public init(input: CreateFriendRequestInput, condition: ModelFriendRequestConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createFriendRequest", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createFriendRequest: CreateFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createFriendRequest": createFriendRequest.flatMap { $0.snapshot }])
    }

    public var createFriendRequest: CreateFriendRequest? {
      get {
        return (snapshot["createFriendRequest"] as? Snapshot).flatMap { CreateFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createFriendRequest")
      }
    }

    public struct CreateFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class UpdateFriendRequestMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateFriendRequest($input: UpdateFriendRequestInput!, $condition: ModelFriendRequestConditionInput) {\n  updateFriendRequest(input: $input, condition: $condition) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateFriendRequestInput
  public var condition: ModelFriendRequestConditionInput?

  public init(input: UpdateFriendRequestInput, condition: ModelFriendRequestConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateFriendRequest", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateFriendRequest: UpdateFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateFriendRequest": updateFriendRequest.flatMap { $0.snapshot }])
    }

    public var updateFriendRequest: UpdateFriendRequest? {
      get {
        return (snapshot["updateFriendRequest"] as? Snapshot).flatMap { UpdateFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateFriendRequest")
      }
    }

    public struct UpdateFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class DeleteFriendRequestMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteFriendRequest($input: DeleteFriendRequestInput!, $condition: ModelFriendRequestConditionInput) {\n  deleteFriendRequest(input: $input, condition: $condition) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteFriendRequestInput
  public var condition: ModelFriendRequestConditionInput?

  public init(input: DeleteFriendRequestInput, condition: ModelFriendRequestConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteFriendRequest", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteFriendRequest: DeleteFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteFriendRequest": deleteFriendRequest.flatMap { $0.snapshot }])
    }

    public var deleteFriendRequest: DeleteFriendRequest? {
      get {
        return (snapshot["deleteFriendRequest"] as? Snapshot).flatMap { DeleteFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteFriendRequest")
      }
    }

    public struct DeleteFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class GetCurrentPositionQuery: GraphQLQuery {
  public static let operationString =
    "query GetCurrentPosition($id: ID!) {\n  getCurrentPosition(id: $id) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getCurrentPosition", arguments: ["id": GraphQLVariable("id")], type: .object(GetCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getCurrentPosition: GetCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Query", "getCurrentPosition": getCurrentPosition.flatMap { $0.snapshot }])
    }

    public var getCurrentPosition: GetCurrentPosition? {
      get {
        return (snapshot["getCurrentPosition"] as? Snapshot).flatMap { GetCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getCurrentPosition")
      }
    }

    public struct GetCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListCurrentPositionsQuery: GraphQLQuery {
  public static let operationString =
    "query ListCurrentPositions($filter: ModelCurrentPositionFilterInput, $limit: Int, $nextToken: String) {\n  listCurrentPositions(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      xCoord\n      yCoord\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelCurrentPositionFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelCurrentPositionFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listCurrentPositions", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listCurrentPositions: ListCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Query", "listCurrentPositions": listCurrentPositions.flatMap { $0.snapshot }])
    }

    public var listCurrentPositions: ListCurrentPosition? {
      get {
        return (snapshot["listCurrentPositions"] as? Snapshot).flatMap { ListCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listCurrentPositions")
      }
    }

    public struct ListCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelCurrentPositionConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelCurrentPositionConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["CurrentPosition"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("xCoord", type: .scalar(String.self)),
          GraphQLField("yCoord", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var xCoord: String? {
          get {
            return snapshot["xCoord"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoord")
          }
        }

        public var yCoord: String? {
          get {
            return snapshot["yCoord"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoord")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetUserfriendListQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserfriendList($id: ID!) {\n  getUserfriendList(id: $id) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserfriendList", arguments: ["id": GraphQLVariable("id")], type: .object(GetUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserfriendList: GetUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserfriendList": getUserfriendList.flatMap { $0.snapshot }])
    }

    public var getUserfriendList: GetUserfriendList? {
      get {
        return (snapshot["getUserfriendList"] as? Snapshot).flatMap { GetUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUserfriendList")
      }
    }

    public struct GetUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class ListUserfriendListsQuery: GraphQLQuery {
  public static let operationString =
    "query ListUserfriendLists($filter: ModelUserfriendListFilterInput, $limit: Int, $nextToken: String) {\n  listUserfriendLists(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      friends {\n        __typename\n        id\n        name\n        isTracking\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserfriendListFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserfriendListFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUserfriendLists", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUserfriendLists: ListUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUserfriendLists": listUserfriendLists.flatMap { $0.snapshot }])
    }

    public var listUserfriendLists: ListUserfriendList? {
      get {
        return (snapshot["listUserfriendLists"] as? Snapshot).flatMap { ListUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUserfriendLists")
      }
    }

    public struct ListUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserfriendListConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserfriendListConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UserfriendList"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var friends: [Friend]? {
          get {
            return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Friend: GraphQLSelectionSet {
          public static let possibleTypes = ["Friend"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, isTracking: Bool) {
            self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var isTracking: Bool {
            get {
              return snapshot["isTracking"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "isTracking")
            }
          }
        }
      }
    }
  }
}

public final class GetUserTrackedPathsQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserTrackedPaths($id: ID!) {\n  getUserTrackedPaths(id: $id) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserTrackedPaths", arguments: ["id": GraphQLVariable("id")], type: .object(GetUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserTrackedPaths: GetUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserTrackedPaths": getUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var getUserTrackedPaths: GetUserTrackedPath? {
      get {
        return (snapshot["getUserTrackedPaths"] as? Snapshot).flatMap { GetUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUserTrackedPaths")
      }
    }

    public struct GetUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class ListUserTrackedPathsQuery: GraphQLQuery {
  public static let operationString =
    "query ListUserTrackedPaths($filter: ModelUserTrackedPathsFilterInput, $limit: Int, $nextToken: String) {\n  listUserTrackedPaths(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      tracks {\n        __typename\n        id\n        name\n        startDate\n        endDate\n        notes\n        xCoords\n        yCoords\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserTrackedPathsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserTrackedPathsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUserTrackedPaths", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUserTrackedPaths: ListUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUserTrackedPaths": listUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var listUserTrackedPaths: ListUserTrackedPath? {
      get {
        return (snapshot["listUserTrackedPaths"] as? Snapshot).flatMap { ListUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUserTrackedPaths")
      }
    }

    public struct ListUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserTrackedPathsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserTrackedPathsConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UserTrackedPaths"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var tracks: [Track]? {
          get {
            return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Track: GraphQLSelectionSet {
          public static let possibleTypes = ["TrackedPath"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
            GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
            self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var notes: [String]? {
            get {
              return snapshot["notes"] as? [String]
            }
            set {
              snapshot.updateValue(newValue, forKey: "notes")
            }
          }

          public var xCoords: [Double]? {
            get {
              return snapshot["xCoords"] as? [Double]
            }
            set {
              snapshot.updateValue(newValue, forKey: "xCoords")
            }
          }

          public var yCoords: [Double]? {
            get {
              return snapshot["yCoords"] as? [Double]
            }
            set {
              snapshot.updateValue(newValue, forKey: "yCoords")
            }
          }
        }
      }
    }
  }
}

public final class GetFriendRequestQuery: GraphQLQuery {
  public static let operationString =
    "query GetFriendRequest($id: ID!) {\n  getFriendRequest(id: $id) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getFriendRequest", arguments: ["id": GraphQLVariable("id")], type: .object(GetFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getFriendRequest: GetFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Query", "getFriendRequest": getFriendRequest.flatMap { $0.snapshot }])
    }

    public var getFriendRequest: GetFriendRequest? {
      get {
        return (snapshot["getFriendRequest"] as? Snapshot).flatMap { GetFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getFriendRequest")
      }
    }

    public struct GetFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class ListFriendRequestsQuery: GraphQLQuery {
  public static let operationString =
    "query ListFriendRequests($filter: ModelFriendRequestFilterInput, $limit: Int, $nextToken: String) {\n  listFriendRequests(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      senderEmail\n      sender {\n        __typename\n        id\n        name\n        isTracking\n      }\n      recipient\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelFriendRequestFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelFriendRequestFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listFriendRequests", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listFriendRequests: ListFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Query", "listFriendRequests": listFriendRequests.flatMap { $0.snapshot }])
    }

    public var listFriendRequests: ListFriendRequest? {
      get {
        return (snapshot["listFriendRequests"] as? Snapshot).flatMap { ListFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listFriendRequests")
      }
    }

    public struct ListFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelFriendRequestConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelFriendRequestConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["FriendRequest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
          GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var senderEmail: String {
          get {
            return snapshot["senderEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "senderEmail")
          }
        }

        public var sender: Sender {
          get {
            return Sender(snapshot: snapshot["sender"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "sender")
          }
        }

        public var recipient: String {
          get {
            return snapshot["recipient"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "recipient")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Sender: GraphQLSelectionSet {
          public static let possibleTypes = ["Friend"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, isTracking: Bool) {
            self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var isTracking: Bool {
            get {
              return snapshot["isTracking"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "isTracking")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateCurrentPositionSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateCurrentPosition($filter: ModelSubscriptionCurrentPositionFilterInput) {\n  onCreateCurrentPosition(filter: $filter) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionCurrentPositionFilterInput?

  public init(filter: ModelSubscriptionCurrentPositionFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateCurrentPosition", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateCurrentPosition: OnCreateCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateCurrentPosition": onCreateCurrentPosition.flatMap { $0.snapshot }])
    }

    public var onCreateCurrentPosition: OnCreateCurrentPosition? {
      get {
        return (snapshot["onCreateCurrentPosition"] as? Snapshot).flatMap { OnCreateCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateCurrentPosition")
      }
    }

    public struct OnCreateCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateCurrentPositionSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateCurrentPosition($filter: ModelSubscriptionCurrentPositionFilterInput) {\n  onUpdateCurrentPosition(filter: $filter) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionCurrentPositionFilterInput?

  public init(filter: ModelSubscriptionCurrentPositionFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateCurrentPosition", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateCurrentPosition: OnUpdateCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateCurrentPosition": onUpdateCurrentPosition.flatMap { $0.snapshot }])
    }

    public var onUpdateCurrentPosition: OnUpdateCurrentPosition? {
      get {
        return (snapshot["onUpdateCurrentPosition"] as? Snapshot).flatMap { OnUpdateCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateCurrentPosition")
      }
    }

    public struct OnUpdateCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteCurrentPositionSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteCurrentPosition($filter: ModelSubscriptionCurrentPositionFilterInput) {\n  onDeleteCurrentPosition(filter: $filter) {\n    __typename\n    id\n    name\n    xCoord\n    yCoord\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionCurrentPositionFilterInput?

  public init(filter: ModelSubscriptionCurrentPositionFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteCurrentPosition", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteCurrentPosition.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteCurrentPosition: OnDeleteCurrentPosition? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteCurrentPosition": onDeleteCurrentPosition.flatMap { $0.snapshot }])
    }

    public var onDeleteCurrentPosition: OnDeleteCurrentPosition? {
      get {
        return (snapshot["onDeleteCurrentPosition"] as? Snapshot).flatMap { OnDeleteCurrentPosition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteCurrentPosition")
      }
    }

    public struct OnDeleteCurrentPosition: GraphQLSelectionSet {
      public static let possibleTypes = ["CurrentPosition"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("xCoord", type: .scalar(String.self)),
        GraphQLField("yCoord", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, xCoord: String? = nil, yCoord: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "CurrentPosition", "id": id, "name": name, "xCoord": xCoord, "yCoord": yCoord, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var xCoord: String? {
        get {
          return snapshot["xCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "xCoord")
        }
      }

      public var yCoord: String? {
        get {
          return snapshot["yCoord"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yCoord")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateUserfriendListSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUserfriendList($filter: ModelSubscriptionUserfriendListFilterInput) {\n  onCreateUserfriendList(filter: $filter) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUserfriendListFilterInput?

  public init(filter: ModelSubscriptionUserfriendListFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUserfriendList", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUserfriendList: OnCreateUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUserfriendList": onCreateUserfriendList.flatMap { $0.snapshot }])
    }

    public var onCreateUserfriendList: OnCreateUserfriendList? {
      get {
        return (snapshot["onCreateUserfriendList"] as? Snapshot).flatMap { OnCreateUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUserfriendList")
      }
    }

    public struct OnCreateUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class OnUpdateUserfriendListSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUserfriendList($filter: ModelSubscriptionUserfriendListFilterInput) {\n  onUpdateUserfriendList(filter: $filter) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUserfriendListFilterInput?

  public init(filter: ModelSubscriptionUserfriendListFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUserfriendList", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUserfriendList: OnUpdateUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUserfriendList": onUpdateUserfriendList.flatMap { $0.snapshot }])
    }

    public var onUpdateUserfriendList: OnUpdateUserfriendList? {
      get {
        return (snapshot["onUpdateUserfriendList"] as? Snapshot).flatMap { OnUpdateUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUserfriendList")
      }
    }

    public struct OnUpdateUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class OnDeleteUserfriendListSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUserfriendList($filter: ModelSubscriptionUserfriendListFilterInput) {\n  onDeleteUserfriendList(filter: $filter) {\n    __typename\n    id\n    friends {\n      __typename\n      id\n      name\n      isTracking\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUserfriendListFilterInput?

  public init(filter: ModelSubscriptionUserfriendListFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUserfriendList", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteUserfriendList.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUserfriendList: OnDeleteUserfriendList? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUserfriendList": onDeleteUserfriendList.flatMap { $0.snapshot }])
    }

    public var onDeleteUserfriendList: OnDeleteUserfriendList? {
      get {
        return (snapshot["onDeleteUserfriendList"] as? Snapshot).flatMap { OnDeleteUserfriendList(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUserfriendList")
      }
    }

    public struct OnDeleteUserfriendList: GraphQLSelectionSet {
      public static let possibleTypes = ["UserfriendList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("friends", type: .list(.nonNull(.object(Friend.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, friends: [Friend]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserfriendList", "id": id, "friends": friends.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var friends: [Friend]? {
        get {
          return (snapshot["friends"] as? [Snapshot]).flatMap { $0.map { Friend(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class OnCreateUserTrackedPathsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUserTrackedPaths($filter: ModelSubscriptionUserTrackedPathsFilterInput) {\n  onCreateUserTrackedPaths(filter: $filter) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUserTrackedPathsFilterInput?

  public init(filter: ModelSubscriptionUserTrackedPathsFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUserTrackedPaths", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUserTrackedPaths: OnCreateUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUserTrackedPaths": onCreateUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var onCreateUserTrackedPaths: OnCreateUserTrackedPath? {
      get {
        return (snapshot["onCreateUserTrackedPaths"] as? Snapshot).flatMap { OnCreateUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUserTrackedPaths")
      }
    }

    public struct OnCreateUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class OnUpdateUserTrackedPathsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUserTrackedPaths($filter: ModelSubscriptionUserTrackedPathsFilterInput) {\n  onUpdateUserTrackedPaths(filter: $filter) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUserTrackedPathsFilterInput?

  public init(filter: ModelSubscriptionUserTrackedPathsFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUserTrackedPaths", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUserTrackedPaths: OnUpdateUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUserTrackedPaths": onUpdateUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var onUpdateUserTrackedPaths: OnUpdateUserTrackedPath? {
      get {
        return (snapshot["onUpdateUserTrackedPaths"] as? Snapshot).flatMap { OnUpdateUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUserTrackedPaths")
      }
    }

    public struct OnUpdateUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class OnDeleteUserTrackedPathsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUserTrackedPaths($filter: ModelSubscriptionUserTrackedPathsFilterInput) {\n  onDeleteUserTrackedPaths(filter: $filter) {\n    __typename\n    id\n    tracks {\n      __typename\n      id\n      name\n      startDate\n      endDate\n      notes\n      xCoords\n      yCoords\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUserTrackedPathsFilterInput?

  public init(filter: ModelSubscriptionUserTrackedPathsFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUserTrackedPaths", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteUserTrackedPath.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUserTrackedPaths: OnDeleteUserTrackedPath? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUserTrackedPaths": onDeleteUserTrackedPaths.flatMap { $0.snapshot }])
    }

    public var onDeleteUserTrackedPaths: OnDeleteUserTrackedPath? {
      get {
        return (snapshot["onDeleteUserTrackedPaths"] as? Snapshot).flatMap { OnDeleteUserTrackedPath(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUserTrackedPaths")
      }
    }

    public struct OnDeleteUserTrackedPath: GraphQLSelectionSet {
      public static let possibleTypes = ["UserTrackedPaths"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("tracks", type: .list(.nonNull(.object(Track.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, tracks: [Track]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UserTrackedPaths", "id": id, "tracks": tracks.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var tracks: [Track]? {
        get {
          return (snapshot["tracks"] as? [Snapshot]).flatMap { $0.map { Track(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "tracks")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes = ["TrackedPath"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("xCoords", type: .list(.nonNull(.scalar(Double.self)))),
          GraphQLField("yCoords", type: .list(.nonNull(.scalar(Double.self)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, startDate: String, endDate: String, notes: [String]? = nil, xCoords: [Double]? = nil, yCoords: [Double]? = nil) {
          self.init(snapshot: ["__typename": "TrackedPath", "id": id, "name": name, "startDate": startDate, "endDate": endDate, "notes": notes, "xCoords": xCoords, "yCoords": yCoords])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var notes: [String]? {
          get {
            return snapshot["notes"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "notes")
          }
        }

        public var xCoords: [Double]? {
          get {
            return snapshot["xCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "xCoords")
          }
        }

        public var yCoords: [Double]? {
          get {
            return snapshot["yCoords"] as? [Double]
          }
          set {
            snapshot.updateValue(newValue, forKey: "yCoords")
          }
        }
      }
    }
  }
}

public final class OnCreateFriendRequestSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateFriendRequest($filter: ModelSubscriptionFriendRequestFilterInput) {\n  onCreateFriendRequest(filter: $filter) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionFriendRequestFilterInput?

  public init(filter: ModelSubscriptionFriendRequestFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateFriendRequest", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateFriendRequest: OnCreateFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateFriendRequest": onCreateFriendRequest.flatMap { $0.snapshot }])
    }

    public var onCreateFriendRequest: OnCreateFriendRequest? {
      get {
        return (snapshot["onCreateFriendRequest"] as? Snapshot).flatMap { OnCreateFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateFriendRequest")
      }
    }

    public struct OnCreateFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class OnUpdateFriendRequestSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateFriendRequest($filter: ModelSubscriptionFriendRequestFilterInput) {\n  onUpdateFriendRequest(filter: $filter) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionFriendRequestFilterInput?

  public init(filter: ModelSubscriptionFriendRequestFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateFriendRequest", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateFriendRequest: OnUpdateFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateFriendRequest": onUpdateFriendRequest.flatMap { $0.snapshot }])
    }

    public var onUpdateFriendRequest: OnUpdateFriendRequest? {
      get {
        return (snapshot["onUpdateFriendRequest"] as? Snapshot).flatMap { OnUpdateFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateFriendRequest")
      }
    }

    public struct OnUpdateFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}

public final class OnDeleteFriendRequestSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteFriendRequest($filter: ModelSubscriptionFriendRequestFilterInput) {\n  onDeleteFriendRequest(filter: $filter) {\n    __typename\n    id\n    senderEmail\n    sender {\n      __typename\n      id\n      name\n      isTracking\n    }\n    recipient\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionFriendRequestFilterInput?

  public init(filter: ModelSubscriptionFriendRequestFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteFriendRequest", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteFriendRequest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteFriendRequest: OnDeleteFriendRequest? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteFriendRequest": onDeleteFriendRequest.flatMap { $0.snapshot }])
    }

    public var onDeleteFriendRequest: OnDeleteFriendRequest? {
      get {
        return (snapshot["onDeleteFriendRequest"] as? Snapshot).flatMap { OnDeleteFriendRequest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteFriendRequest")
      }
    }

    public struct OnDeleteFriendRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["FriendRequest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderEmail: String, sender: Sender, recipient: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "FriendRequest", "id": id, "senderEmail": senderEmail, "sender": sender.snapshot, "recipient": recipient, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderEmail: String {
        get {
          return snapshot["senderEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderEmail")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var recipient: String {
        get {
          return snapshot["recipient"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "recipient")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["Friend"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("isTracking", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, isTracking: Bool) {
          self.init(snapshot: ["__typename": "Friend", "id": id, "name": name, "isTracking": isTracking])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var isTracking: Bool {
          get {
            return snapshot["isTracking"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isTracking")
          }
        }
      }
    }
  }
}