//
//  Parameters.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/19.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

struct weatherParameters: Encodable {
    var city: String
    
    func toJSON() -> [String: Any] {
        return [
            "q": city,
            "appid": constants.api_key
        ]
    }
}
