//
//  CurrentWeatherViewController.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import UIKit
import CoreLocation

class CurrentWeatherViewController: UIViewController {
   
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var CurrentWeatherView: UIView!
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var lblCityName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCurrentTemp: UILabel!
    @IBOutlet weak var lblMaxTemp: UILabel!
    @IBOutlet weak var lblMinTemp: UILabel!
    @IBOutlet weak var wheatherIcon: UIImageView!
    @IBOutlet weak var lblMaxDescription: UILabel!
    @IBOutlet weak var lblMinDescription: UILabel!
    
    lazy var viewModel: CurrentWeatherViewModel = {
        return CurrentWeatherViewModel(view: self)
    }()
    
    fileprivate let locationManager: CLLocationManager = {
       let manager = CLLocationManager()
       manager.requestWhenInUseAuthorization()
       return manager
    }()
    
    private var forecastData: forecast!
    private var dataSource = DailyTemperatureTableViewDataSource()
    private var cityName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        currentLocation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar()
    }
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = dataSource
        tableView.tableFooterView = UIView()
        tableView.register(DailyTemperatureTableViewCell.self)
        tableView.setTableViewGradient(with: UIColor(hex: Style.primaryColor),  UIColor(hex: Style.SecondaryColor))
        CurrentWeatherView.setGradient(colorTop: UIColor(hex: Style.SecondaryColor), colorBottom: .white)
    }
    
    //MARK: - Helper Method
    func currentLocation() {
       locationManager.delegate = self
       locationManager.desiredAccuracy = kCLLocationAccuracyBest
       locationManager.startUpdatingLocation()
    }
}

//MARK: - CLLocationManagerDelegate Methods
extension CurrentWeatherViewController: CLLocationManagerDelegate {
     func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        CLGeocoder().reverseGeocodeLocation(location, completionHandler: { placemark, error in
            guard let placemark = placemark?.first, error == nil else { return }
            if let city = placemark.locality {
                self.cityName = city
                self.viewModel.getWeather(cityName: city)
            }
        })
        locationManager.stopUpdatingLocation()
     }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined, .denied, .restricted:
            showLocationError()
        case .authorizedWhenInUse, .authorizedAlways:
                locationManager.startUpdatingLocation()
        default:
            showLocationError()
        }
    }
     
     func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
     }
}

//MARK: - CurrentWeatherView Methods
extension CurrentWeatherViewController: CurrentWeatherView {
    
    func showCurrentWeather(weather: weather) {
        lblCityName.text = weather.name
        lblDescription.text = weather.weather[0].description
        lblCurrentTemp.text = weather.main.current.toºcelsius()
        lblMaxTemp.text = weather.main.max.toºcelsius()
        lblMinTemp.text = weather.main.min.toºcelsius()
        wheatherIcon.downloaded(from: String(format: constants.iconUrl, weather.weather[0].icon))
        lblMinDescription.text = "Min:"
        lblMaxDescription.text = "Max:"
    }
    
    func showWeatherForecast(forecast: forecast) {
        dataSource.setForecastweather(with: forecast)
        tableView.reloadData()
    }
    
    func showError(errorMessage: String) {
        presentAlertWithTitle(title: "WeatherApp", message: errorMessage, options: "Close") { (option)  in}
    }
    
    func showLocationError() {
        presentAlertWithTitle(title: "WeatherApp", message: constants.errorLocation, options: "Settings") { (option)  in
            switch(option) {
            case 0:
                guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {return}
                if UIApplication.shared.canOpenURL(settingsUrl) {
                    UIApplication.shared.open(settingsUrl)
                }
            default:
                break
            }
        }
    }
    
    func showLoadingIndicator() {
        showActivityIndicatory()
    }
    
    func hideLoadingIndicator() {
        hideActivityIndicatory()
    }
    
    func navigateToWeatherDetails(forecast: forecast) {
        let weatherDetailsVC = WeatherDetailsViewController(forecast: forecast, city: self.cityName)
        self.navigationController?.pushViewController(weatherDetailsVC, animated: true)
    }
}

//MARK: - UITableViewDelegate Methods
extension CurrentWeatherViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let weather = dataSource.getSelectedItem(row: indexPath.row)
        guard let weatherDetails = weather else {return}
        self.navigateToWeatherDetails(forecast: weatherDetails)
    }

}
