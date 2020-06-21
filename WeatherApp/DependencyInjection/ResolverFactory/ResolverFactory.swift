//
//  ResolverFactory.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import Swinject

class ResolverFactory {
    private static var container: Resolve = DIContainer.instance
}

extension ResolverFactory: Resolving {
    static func resolve<T>(dependency: T.Type) -> T {
        return container.resolve(dependency)
    }
    static func reset() {
        container.reset()
    }
}
