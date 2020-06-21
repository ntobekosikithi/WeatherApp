//
//  WeatherRepository.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

protocol WeatherRepository: class {
    func getCurrentWeather(for cityName: String, completion: @escaping (Result<weather, Error>) -> Void)
    
    func getWeatherForecast(for cityName: String, completion: @escaping (Result<forecast, Error>) -> Void)
}

class WeatherRepositoryImplementation: WeatherRepository {
    
    private let service: HttpServicing = ResolverFactory.resolve(dependency: HttpServicing.self)
    
    func getCurrentWeather(for cityName: String, completion: @escaping (Result<weather, Error>) -> Void) {
        let request = weatherParameters(city: cityName)
        service.GET(url: EndPoints.weather, parameters: request.toJSON(),
            success: {(response: weather) in
                completion(Result.success(response))
        }, error: {(error: NetworkingError) in
            completion(Result.failure(error))
        })
    }
    
    func getWeatherForecast(for cityName: String, completion: @escaping (Result<forecast, Error>) -> Void) {
        let request = weatherParameters(city: cityName)
        service.GET(url: EndPoints.forecast, parameters: request.toJSON(),
            success: {(response: forecast) in
                completion(Result.success(response))
        }, error: {(error: NetworkingError) in
            completion(Result.failure(error))
        })
    }
}
