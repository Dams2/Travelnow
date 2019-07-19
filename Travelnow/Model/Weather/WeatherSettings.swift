//
//  WeatherSettings.swift
//  Travelnow
//
//  Created by Damien Rojo on 19/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import Foundation
import UIKit

class WeatherSettings: WeatherViewController {
    
    func cityLabelUpdate(city: Int) {
        if city == 0 {
            cityLabel.text = "New York"
        } else if city == 1 {
            cityLabel.text = "Genève"
        }
    }
    
    func backGroundColor(iconName: String, temperatureFont: UIView) {
        let suffix = iconName.suffix(1)
        if (suffix ==  "d") {
        temperatureFont.backgroundColor = UIColor(red: 70.0/255.0, green: 165.0/255, blue: 1.0, alpha: 1.0)
        } else {
        temperatureFont.backgroundColor = UIColor(red: 11.0/255.0, green: 90.0/255, blue: 1.0, alpha: 1.0)
        }
    }
}
