//
//  HttpServicing.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

protocol HttpServicing {

    func GET<T: Codable>(url: String, parameters: [String: Any], success: @escaping (T) -> Void,
                                    error: @escaping (NetworkingError) -> Void)
}
