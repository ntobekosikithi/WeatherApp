//
//  DailyTemperatureTableViewDataSource.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/19.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import UIKit

class DailyTemperatureTableViewDataSource: NSObject, UITableViewDataSource {

    private var forecastDataToDisplay: forecast!
    private var forecastData: forecast!

    func setForecastweather(with forecastData: forecast?) {
        guard let forecastData = forecastData else { return }
        self.forecastData = forecastData
        let list = forecastData.list?.filter {
            $0.date?.toDate().format(format: "HH:mm") == "06:00"
        }
        self.forecastDataToDisplay = forecast(list: list)
    }
    
    func getSelectedItem(row: Int) -> forecast? {
        guard let forecastData = forecastDataToDisplay, let list = forecastData.list else {return nil}
        let displayedData = list[row]
        
        let weatherForecast = self.forecastData.list?.filter {
            $0.date?.toDate().format(format: "EEEE, d, MMM") == displayedData.date?.toDate().format(format: "EEEE, d, MMM")
        }
        return forecast(list: weatherForecast)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let forecast = forecastDataToDisplay, let list = forecast.list else { return 0 }
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as DailyTemperatureTableViewCell
        guard let forecast = forecastDataToDisplay.list else { return UITableViewCell() }
        let weather = forecast[indexPath.row]

        cell.lblDescription.text = weather.weather[0].description
        cell.lblDate.text = weather.date?.toDate().format(format: "EEEE, d, MMM")
        cell.weatherIcon.downloaded(from: String(format: constants.iconUrl,weather.weather[0].icon ))
        cell.lblMaxTemp.text = weather.main.max.toºcelsius()
        cell.lblMinTemp.text = weather.main.min.toºcelsius()
        return cell
    }

}
