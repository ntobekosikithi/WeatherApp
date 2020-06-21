//
//  File.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/21.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {

    func register<T: UICollectionViewCell & ReusableView & NibView>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell & ReusableView>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}
