//
//  WeatherViewController.swift
//  Travelnow
//
//  Created by Damien Rojo on 15/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class WeatherViewController: UIViewController {

    @IBOutlet weak var temperatureFont: UIView!
    @IBOutlet weak var dayFont: UIView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var dataIndication: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var seg: UISegmentedControl!

    let openWeatherApi = OpenWeatherApi(apiKey: "80d738c25791a5d0a10b2293d2cc104e", newYorkLatitude: 40.7306, newYorkLongitude: -73.9867, genevaLatitude: 46.2018, genevaLongitude: 6.1466)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openWeatherApi.locationManager(country: true, weatherIcon: weatherIcon, temperatureLabel: temperatureLabel, dayLabel: dayLabel, temperatureFont: temperatureFont, cityLabel: cityLabel)
    }
    
    @IBAction func countrySelection(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            openWeatherApi.locationManager(country: true, weatherIcon: weatherIcon, temperatureLabel: temperatureLabel, dayLabel: dayLabel, temperatureFont: temperatureFont, cityLabel: cityLabel)
        } else if seg.selectedSegmentIndex == 1 {
            openWeatherApi.locationManager(country: false, weatherIcon: weatherIcon, temperatureLabel: temperatureLabel, dayLabel: dayLabel, temperatureFont: temperatureFont, cityLabel: cityLabel)
        }
    }
    
}
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

