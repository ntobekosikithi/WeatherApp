//
//  Extensions.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/19.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import UIKit

// MARK: - UIView extensions
extension UIView {
    func setGradient(colorTop: UIColor, colorBottom: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
        let gradientLocations = [0.3,1.0]
        gradientLayer.locations = gradientLocations as [NSNumber]
        gradientLayer.frame = self.bounds

        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

// MARK: - UIColor extensions
extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1) {
        let chars = Array(hex.dropFirst())
        self.init(red:   .init(strtoul(String(chars[0...1]),nil,16))/255,
                  green: .init(strtoul(String(chars[2...3]),nil,16))/255,
                  blue:  .init(strtoul(String(chars[4...5]),nil,16))/255,
                  alpha: alpha)}
}

// MARK: - Double extensions
extension Double{
    func toºcelsius() -> String {
        return String(format: "%.0f\("º")",self - 273.15) // formula for Kelvin - 273.15
    }
}


// MARK: - String extensions
extension String {
    func toDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        guard let date = dateFormatter.date(from:self) else {return Date()}
        return date
    }
    
    func toWeatherDescription() -> String {
        switch self {
        case "Thunderstorm", "Drizzle", "Rain":
            return "Sunny"
        case "Clear":
            return "clear"
        case "Clouds":
            return "Cloudy"
        default:
            return "Cloudy"
        }
    }
}

// MARK: - String extensions
extension Date{
    func format(format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        let strDate = dateFormatter.string(from: (self))
        return strDate
    }

}

// MARK: - UIImageView extensions
extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
