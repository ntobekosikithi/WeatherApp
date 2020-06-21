//
//  WeatherDetailsCollectionViewDatasource.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/21.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import UIKit

class WeatherDetailsCollectionViewDatasource: NSObject, UICollectionViewDataSource {
    
    private var forecastData: forecast?
    init(forecast: forecast) {
        self.forecastData = forecast
    }

    func getSelectedItem(row: Int) -> weather? {
        guard let forecast = forecastData, let list = forecast.list else {return nil}
        let weather = list[row]
        return weather
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let forecast = forecastData, let list = forecast.list else {return 0}
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as WeatherDetailsCollectionViewCell
        guard let forecast = forecastData?.list else { return UICollectionViewCell() }
        let weather = forecast[indexPath.row]
        cell.lblTime.text = weather.date?.toDate().format(format: "HH:mm")
        cell.weatherIcon.downloaded(from: String(format: constants.iconUrl,weather.weather[0].icon ))
        cell.lblTemp.text = weather.main.max.toºcelsius()
        //cell.selec
        return cell
    }
}
