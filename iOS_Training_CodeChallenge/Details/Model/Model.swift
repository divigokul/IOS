//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)
//
//import Foundation
//
//struct Config: Codable {
//    let mrData: MRData
//
//    enum CodingKeys: String, CodingKey {
//        case mrData = "MRData"
//    }
//}
//
//// MRData
//struct MRData: Codable {
////    let xmlns: String
////    let series: String
////    let url: String
////    let limit, offset, total: String
//    let RaceTable: RaceTable
//
////    enum CodingKeys: String, CodingKey {
////        case xmlns, series, url, limit, offset, total
////        case raceTable = "RaceTable"
////    }
//}
//
//// RaceTable
//struct RaceTable: Codable {
////    let season, round: String
//    let Races: [Race]
//
////    enum CodingKeys: String, CodingKey {
////        case season, round
////        case races = "Races"
////    }
//}
//
//// Race
//struct Race: Codable {
////    let season, round: String
////    let url: String
////    let raceName: String
////    let circuit: Circuit
////    let date: String
//    let Results: [Result]
//
////    enum CodingKeys: String, CodingKey {
////        case season, round, url, raceName
////        case circuit = "Circuit"
////        case date
////        case results = "Results"
////    }
//}
//
//// Circuit
//struct Circuit: Codable {
//    let circuitID: String
//    let url: String
//    let circuitName: String
//    let location: Location
//
//    enum CodingKeys: String, CodingKey {
//        case circuitID = "circuitId"
//        case url, circuitName
//        case location = "Location"
//    }
//}
//
//// Location
//struct Location: Codable {
//    let lat, long, locality, country: String
//}
//
//// Result
//struct Result: Codable {
////    let number, position, positionText, points: String
//    let Driver: Driver
////    let constructor: Constructor
////    let grid, laps, status: String
////    let time: ResultTime?
////    let fastestLap: FastestLap
//
////    enum CodingKeys: String, CodingKey {
////        case number, position, positionText, points
////        case driver = "Driver"
////        case constructor = "Constructor"
////        case grid, laps, status
////        case time = "Time"
////        case fastestLap = "FastestLap"
////    }
//}
//
//// Constructor
//struct Constructor: Codable {
//    let constructorID: String
//    let url: String
//    let name, nationality: String
//
//    enum CodingKeys: String, CodingKey {
//        case constructorID = "constructorId"
//        case url, name, nationality
//    }
//}
//
//// Driver
//struct Driver: Codable {
////    let code: String?
////    let url: String?
//    let givenName, familyName: String
////    let driverID, dateOfBirth, nationality: String?
////    let permanentNumber: String?
//}
//
////extension Driver {
////    enum CodingKeys: String, CodingKey {
////        case givenName = "givenName"
////        case familyName = "familyName"
////        case driverID, code, url, dateOfBirth, nationality, permanentNumber
////    }
////}
//
//// FastestLap
////struct FastestLap: Codable {
////    let rank, lap: String
////    let time: FastestLapTime
////    let averageSpeed: AverageSpeed
////
////    enum CodingKeys: String, CodingKey {
////        case rank, lap
////        case time = "Time"
////        case averageSpeed = "AverageSpeed"
////    }
////}
////
////// AverageSpeed
////struct AverageSpeed: Codable {
////    let units: Units
////    let speed: String
////}
////
////enum Units: String, Codable {
////    case kph = "kph"
////}
////
////// FastestLapTime
////struct FastestLapTime: Codable {
////    let time: String
////}
////
////// ResultTime
////struct ResultTime: Codable {
////    let millis, time: String
////}
////
//enum HTTPError: LocalizedError {
//    case statusCode
//    case post
//}
