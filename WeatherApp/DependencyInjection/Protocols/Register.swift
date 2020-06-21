//
//  Register.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import Swinject

protocol Register {
    func register<T>(dependency: T.Type,
                     implementation: @escaping (_ resolver: Resolve) -> T,
                     objectScope: ObjectScope)
}
