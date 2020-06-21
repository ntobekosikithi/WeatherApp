//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/19.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
protocol CurrentWeatherView: class  {
    func showCurrentWeather(weather: weather)
    func showWeatherForecast(forecast: forecast)
    func showError(errorMessage: String)
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func navigateToWeatherDetails(forecast: forecast)
}
