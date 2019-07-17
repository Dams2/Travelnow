//
//  WeatherViewController.swift
//  Travelnow
//
//  Created by Damien Rojo on 15/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBOutlet weak var temperatureFont: UIView!
    @IBOutlet weak var dayFont: UIView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var stateIndication: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBAction func countrySelection(_ sender: UISegmentedControl) {
        let countryWeather = CountryWeather()
        countryWeather.segmentedControlUpdate()
    }
    
    
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
