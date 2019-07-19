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
    
   // let apiKey = "80d738c25791a5d0a10b2293d2cc104e"
    //let newYorkLatitude = 40.7306
    //let newYorkLongitude = -73.9867
    //let genevaLatitude = 46.2018
    //let genevaLongitude = 6.1466
    let openWeatherApi = OpenWeatherApi(apiKey: "80d738c25791a5d0a10b2293d2cc104e", newYorkLatitude: 40.7306, newYorkLongitude: -73.9867, genevaLatitude: 46.2018, genevaLongitude: 6.1466)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func countrySelection(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            segmentedControlUpdate(selectedSegmentIndex: 0)
            dayOrNight(day: true)
            openWeatherApi.locationManager(country: true, weatherIcon: weatherIcon, temperatureLabel: temperatureLabel)
        } else if seg.selectedSegmentIndex == 1 {
            segmentedControlUpdate(selectedSegmentIndex: 1)
            dayOrNight(day: false)
            openWeatherApi.locationManager(country: true, weatherIcon: weatherIcon, temperatureLabel: temperatureLabel)
        }
    }
    
    func segmentedControlUpdate(selectedSegmentIndex: Int) {
        if selectedSegmentIndex == 0 {
            cityLabel.text = "New York"
            temperatureLabel.text = "28"
        } else if selectedSegmentIndex == 1 {
            cityLabel.text = "Genève"
            temperatureLabel.text = "16"
        }
    }
    
    func dayOrNight(day: Bool) {
        if day == true {
            temperatureFont.backgroundColor = UIColor(red: 70.0/255.0, green: 165.0/255, blue: 1.0, alpha: 1.0)
            dataIndication.text = "Ensoleillé"
        } else if day == false {
            temperatureFont.backgroundColor = UIColor(red: 11.0/255.0, green: 90.0/255, blue: 1.0, alpha: 1.0)
            
            dataIndication.text = "Nuit"
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

