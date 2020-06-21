//
//  WeatherDetailsCollectionViewCell.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/21.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import UIKit

class WeatherDetailsCollectionViewCell: UICollectionViewCell, NibView, ReusableView {

    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet {
            self.contentView.backgroundColor = isSelected ? .yellow : .clear
        }
    }
}
