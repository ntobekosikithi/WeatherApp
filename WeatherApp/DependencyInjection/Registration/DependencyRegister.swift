//
//  DependencyRegister.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

func registerAllDependencies() {
    let container = DIContainer.instance
    container.register(dependency: HttpServicing.self, implementation: { _ in
        HttpService()
    }, objectScope: .weak)

    container.register(dependency: WeatherRepository.self, implementation: { _ in
        return WeatherRepositoryImplementation()
    }, objectScope: .weak)
}
