import Foundation

struct Config: Codable {
    let mrData: MRData

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRData: Codable {
    let raceTable: RaceTable
    
    enum CodingKeys: String, CodingKey {
        case raceTable = "RaceTable"
    }
}

struct RaceTable: Codable {
    let races: [Race]
    
    enum CodingKeys: String, CodingKey {
        case races = "Races"
    }
}

struct Race: Codable, Hashable {
    let name: String
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case name = "raceName"
        case results = "Results"
    }
}

struct Result: Codable, Hashable {
    let driver: Driver
    
    enum CodingKeys: String, CodingKey {
        case driver = "Driver"
    }
}

struct Driver: Codable, Hashable {
    let givenName, familyName: String
}

enum HTTPError: LocalizedError {
    case statusCode
    case post
}
