//
//  CurrentWeatherViewModelTests.swift
//  WeatherAppTests
//
//  Created by Ntobeko Sikithi on 2020/06/21.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import XCTest
import Cuckoo
@testable import WeatherApp

class CurrentWeatherViewModelTests: XCTestCase {
    
    var serviceUnderTest: CurrentWeatherViewModel!
    var mockView: MockCurrentWeatherView!
    var mockRepository: MockWeatherRepository!
    var container: DIContainer = DIContainer.instance
    
    override func setUp() {
        super.setUp()
        container.reset()
        container = DIContainer.instance
        container.register(dependency: WeatherRepository.self, implementation: { _ in
            return self.mockRepository
        })
        mockView = MockCurrentWeatherView()
        mockRepository = MockWeatherRepository()
        serviceUnderTest = CurrentWeatherViewModel(view: mockView)
    }
    
    override func tearDown() {
        serviceUnderTest = nil
        mockView = nil
        mockRepository = nil
        super.tearDown()
    }
    
    func testGetCurrentWeatherIsSuccessfulAndShowCuurentWeather() {
        stub(mockRepository) {  mock in
            mock.getCurrentWeather(for: anyString(), completion: any()).then({ (_, result) in
                result(.success(self.mockWeather))
            })
        }
        
        stub(mockView) { mock in
            mock.showCurrentWeather(weather: any()).thenDoNothing()
        }
        
        serviceUnderTest.getCurrentWeather(city: "Mock-City")
        verify(mockRepository).getCurrentWeather(for: anyString(), completion: any())
        verify(mockView).showCurrentWeather(weather: any())
    }
    
    func testGetCurrentWeatherFailsAndShowsError() {
        stub(mockRepository) {  mock in
            mock.getCurrentWeather(for: anyString(), completion: any()).then({ (_, result) in
                result(.failure(NetworkingError.requestFailed))
            })
        }
        
        stub(mockView) { mock in
            mock.showError(errorMessage: any()).thenDoNothing()
        }
        
        serviceUnderTest.getCurrentWeather(city: "Mock-City")
        verify(mockRepository).getCurrentWeather(for: anyString(), completion: any())
        verify(mockView).showError(errorMessage: anyString())
    }
    
    func testGetWeatherForecastIsSuccessfulAndShowCuurentWeather() {
        stub(mockRepository) {  mock in
            mock.getWeatherForecast(for: anyString(), completion: any()).then({ (_, result) in
                result(.success(self.mockForecast))
            })
        }
        
        stub(mockView) { mock in
            mock.showWeatherForecast(forecast: any()).thenDoNothing()
            mock.hideLoadingIndicator().thenDoNothing()
        }
        
        serviceUnderTest.getWeatherForecast(city: "Mock-City")
        verify(mockRepository).getWeatherForecast(for: anyString(), completion: any())
        verify(mockView).showWeatherForecast(forecast: any())
    }
    
    func testGetWeatherForecastFailsAndShowsError() {
        stub(mockRepository) {  mock in
            mock.getWeatherForecast(for: anyString(), completion: any()).then({ (_, result) in
                result(.failure(NetworkingError.requestFailed))
            })
        }
        
        stub(mockView) { mock in
            mock.showError(errorMessage: any()).thenDoNothing()
        }
        
        serviceUnderTest.getWeatherForecast(city: "Mock-City")
        verify(mockRepository).getWeatherForecast(for: anyString(), completion: any())
        
        verify(mockView).showError(errorMessage: anyString())
    }
    
    private var mockWeather: weather {
        let mockTemperature = temperature(current: 14, min: 8, max: 14)
        return weather(weather: [],
                       main: mockTemperature,
                       date: "Mock-date",
                       name: "Mock-city")
        
    }
    
    private var mockForecast: forecast {
        return forecast(list: [mockWeather,mockWeather])
    }

}
