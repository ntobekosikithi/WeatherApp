//
//  Resolve.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

protocol Resolve {
    func resolve<T>(_ dependency: T.Type) -> T
    func reset()
}
