//
//  CountryWeather.swift
//  Travelnow
//
//  Created by Damien Rojo on 17/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import Foundation
import UIKit

class CountryWeather: WeatherViewController {

    func segmentedControlUpdate() {
        
        if seg.selectedSegmentIndex == 0 {
        cityLabel.text = "New York"
        temperatureLabel.text = "28"
        weatherIcon.image = UIImage(named: "sunny")
        } else if seg.selectedSegmentIndex == 1 {
        cityLabel.text = "Genève"
        temperatureLabel.text = "16"
        weatherIcon.image = UIImage(named: "moon")
        }
    }
}
