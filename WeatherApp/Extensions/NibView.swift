//
//  NibView.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import UIKit

protocol NibView: class {}

extension NibView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
