//
//  WeatherDetailsViewController.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblCityName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var lblMaxTemp: UILabel!
    @IBOutlet weak var lblMinTemp: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    
    private var dataSource: WeatherDetailsCollectionViewDatasource!
    private var forecastData: forecast?
    private var city: String
    
    init(forecast: forecast, city: String) {
        dataSource = WeatherDetailsCollectionViewDatasource(forecast: forecast)
        forecastData = forecast
        self.city = city
        super.init(nibName: "WeatherDetailsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showNavigationBar(animated: true)
        guard let forecast = forecastData, let list = forecast.list else {return }
        displayWeather(weather: list[0])
        setUpCollectionView()
    }
    
    func setUpCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = dataSource
        collectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition:.left)
        collectionView.register(WeatherDetailsCollectionViewCell.self)
        self.view.setGradient(colorTop: UIColor(hex: Style.SecondaryColor), colorBottom: .white)
        self.navigationController?.navigationBar.barTintColor = .white
        self.title = "Weather details"
    }
    
    func displayWeather(weather: weather) {
        lblDate.text = weather.date?.toDate().format(format: "EEEE, d, MMMM")
        lblTime.text = weather.date?.toDate().format(format: "HH:mm a")
        lblCityName.text = city
        lblDescription.text = weather.weather[0].main
        lblTemp.text = weather.main.current.toºcelsius()
        lblMaxTemp.text = weather.main.max.toºcelsius()
        lblMinTemp.text = weather.main.min.toºcelsius()
        weatherImg.downloaded(from: String(format: constants.iconUrl,weather.weather[0].icon ))
    }
}

//MARK: - UICollectionViewDelegate Methods
extension WeatherDetailsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedWeather = dataSource.getSelectedItem(row: indexPath.row)
        guard let weather = selectedWeather else{return }
        self.displayWeather(weather: weather)
    }
}

//MARK: - UICollectionViewDelegateFlowLayout Methods
extension WeatherDetailsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
