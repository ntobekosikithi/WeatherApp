//
//  Constants.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/19.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

struct constants {
    static let baseURL = "https://api.openweathermap.org"
    static let api_key = "615c0b5cdb6822c4fcec3e0c800469c7"
    static let units = "metric"
    static let iconUrl = "http://openweathermap.org/img/wn/%@@2x.png"
    static let errorLocation = "Please go to settings and allow the app to access your location to be able to use WeatherApp app's features"
}

struct EndPoints {
     static let weather = "/data/2.5/weather"
     static let forecast = "/data/2.5/forecast"
}

struct Style {
     static let primaryColor = "#b6dfe5"
     static let SecondaryColor = "#d4ecf0"
}
