//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation

class CurrentWeatherViewModel {
    
    private var view: CurrentWeatherView
    private let repository: WeatherRepository = ResolverFactory.resolve(dependency: WeatherRepository.self)
    private var forecast: forecast!
    
    init(view: CurrentWeatherView) {
        self.view = view
    }
    
    func getWeather(cityName: String) {
        self.view.showLoadingIndicator()
        getCurrentWeather(city: cityName)
        getWeatherForecast(city: cityName)
    }
    
    func getCurrentWeather(city: String) {
        repository.getCurrentWeather(for: city){ [weak self] results in
            if let self = self {
                switch results {
                case let .success(response):
                    self.view.showCurrentWeather(weather: response)
                case let .failure(error):
                    self.view.showError(errorMessage: error.localizedDescription)
                }
            }
        }
    }
    
    func getWeatherForecast(city: String) {
        repository.getWeatherForecast(for: city){ [weak self] results in
            if let self = self {
                switch results {
                case let .success(response):
                    self.view.hideLoadingIndicator()
                    self.forecast = response
                    self.view.showWeatherForecast(forecast: response)
                case let .failure(error):
                    self.view.showError(errorMessage: error.localizedDescription)
                }
            }
        }
    }
    
}
