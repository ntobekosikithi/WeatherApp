//
//  weather.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation


struct forecast: Codable{
    let list: [weather]?
}

struct weather: Codable {
    let weather: [description]
    let main: temperature
    let date: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case weather
        case main
        case date = "dt_txt"
        case name
    }
}

struct description: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct temperature: Codable {
    let current: Double
    let min: Double
    let max: Double
    
    enum CodingKeys: String, CodingKey {
        case current = "temp"
        case min = "temp_min"
        case max = "temp_max"
    }
}
