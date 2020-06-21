//
//  Resolving.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

protocol Resolving {
    static func resolve<T>(dependency: T.Type) -> T
    static func reset()
}
