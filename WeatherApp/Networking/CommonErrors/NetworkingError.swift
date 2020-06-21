//
//  NetworkingError.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

enum NetworkingError: Error {
    case requestFailed
    case responseUnsuccessful
    case jsonParsingFailure
    case jsonConversionFailure
    case invalidParameters
    case noData

    var localizedDescription: String {
        switch self {
        case .requestFailed: return "Request Failed"
        case .responseUnsuccessful: return "Response Unsuccessful"
        case .jsonParsingFailure: return "JSON Parsing Failure"
        case .jsonConversionFailure: return "JSON Conversion Failure"
        case .invalidParameters: return "Error converting model to HTTP Parameters"
        case .noData: return "No Data"
        }
    }
}
