//
//  TableViewExtensions.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell & ReusableView & NibView>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell & ReusableView>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
    
    func setTableViewGradient(with top: UIColor, _ bottom: UIColor) {

           let gradientBackgroundColors = [bottom.cgColor, top.cgColor]
           let gradientLocations = [0.0,0.3]

           let gradientLayer = CAGradientLayer()
           gradientLayer.colors = gradientBackgroundColors
           gradientLayer.locations = gradientLocations as [NSNumber]

           gradientLayer.frame = self.bounds
           let backgroundView = UIView(frame: self.bounds)
           backgroundView.layer.insertSublayer(gradientLayer, at: 0)
           self.backgroundView = backgroundView
       }
}
