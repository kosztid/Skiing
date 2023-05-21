// import Combine
// import SwiftUI
// import UIKit
// import Amplify
// import AWSAPIPlugin
//
// public protocol LocationServiceProtocol: AnyObject {
//     //    var locationPublisher: AnyPublisher<Location?, Never> { get }
// }
//
// final class LocationService {
//    private var cancellables: Set<AnyCancellable> = []
//    //    private let location: CurrentValueSubject<Location?, Never> = .init(nil)
//    var list: [Location] = []
//
//    init() {
//        do {
//            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
//            try Amplify.configure()
//        } catch {
//            print("Could not initialize Amplify: \(error)")
//        }
//    }
//
//    func queryLocation() async -> [Location]{
//        do {
//            let queryResult = try await Amplify.API.query(request: .list(CurrentPosition.self))
//
//            let result = try queryResult.get().map { cPos in
//                Location.init(from: cPos)
//            }
//
//            return result
//        } catch {
//            print("Can not retrieve Notes : error \(error)")
//        }
//
//        return []
//    }
//
//    func createLocation(location: Location) async {
//        do {
//            guard let data = location.data else { return }
//            let result = try await Amplify.API.mutate(request: .create(data))
//            let parsedData = try result.get()
//            print("Successfully create location: \(parsedData)")
//        } catch let error as APIError {
//            print("Failed to create note: \(error)")
//        } catch {
//            print("Unexpected error while calling create API : \(error)")
//        }
//    }
//
//    func deleteLocation(location: Location) async {
//
//        do {
//            guard let data = location.data else { return }
//            let result = try await Amplify.API.mutate(request: .delete(data))
//            switch result {
//            case .success(let data):
//                print("Successfully deleted note: \(data)")
//            case .failure(let error):
//                print("Got failed result with \(error.errorDescription)")
//            }
//        } catch {
//            print("Got failed result with error \(error)")
//        }
//    }
// }
//
// extension LocationService: LocationServiceProtocol {
//    //    var locationPublisher: AnyPublisher<Location?, Never> {
//    //        location
//    //            .receive(subscriber: DispatchQueue.main)
//    //            .eraseToAnyPublisher()
//    //    }
// }
