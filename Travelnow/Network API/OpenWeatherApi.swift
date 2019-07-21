//
//  OpenWeatherApi.swift
//  Travelnow
//
//  Created by Damien Rojo on 19/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

let weatherSettings = WeatherSettings()

class OpenWeatherApi {
    
    let apiKey: String
    let newYorkLatitude: Double
    let newYorkLongitude: Double
    let genevaLatitude: Double
    let genevaLongitude: Double
   
    
    init(apiKey: String, newYorkLatitude: Double, newYorkLongitude: Double, genevaLatitude: Double, genevaLongitude: Double) {
        self.apiKey = apiKey
        self.newYorkLatitude = newYorkLatitude
        self.newYorkLongitude = newYorkLongitude
        self.genevaLatitude = genevaLatitude
        self.genevaLongitude = genevaLongitude
    }
    
    func locationManager(country: Bool, weatherIcon: UIImageView, temperatureLabel: UILabel, dayLabel: UILabel, temperatureFont: UIView, cityLabel: UILabel, dataIndication: UILabel) {

        if country == true { Alamofire.request("http://api.openweathermap.org/data/2.5/weather?lat=\(newYorkLatitude)&lon=\(newYorkLongitude)&units=metric&lang=fr&appid=\(apiKey)").responseJSON(completionHandler: {
                response in
                if let responseStr = response.result.value {
                    let jsonResponse = JSON(responseStr)
                    let jsonWeather = jsonResponse["weather"].array![0]
                    let jsonTemp = jsonResponse["main"]
                    let iconName = jsonWeather["icon"].stringValue
                    let description = jsonWeather["description"].stringValue
                    

                    weatherIcon.image = UIImage(named: iconName)
                    temperatureLabel.text = "\(Int(round(jsonTemp["temp"].doubleValue)))"
                    dataIndication.text = description
                    weatherSettings.cityLabelUpdate(city: 0, cityLabel: cityLabel, dayLabel: dayLabel)
                    weatherSettings.backGroundColor(iconName: iconName, temperatureFont: temperatureFont)
                }
            })
        } else if country == false {
            Alamofire.request("http://api.openweathermap.org/data/2.5/weather?lat=\(genevaLatitude)&lon=\(genevaLongitude)&units=metric&lang=fr&appid=\(apiKey)").responseJSON(completionHandler: {
                    response in
                    if let responseStr = response.result.value {
                        let jsonResponse = JSON(responseStr)
                        let jsonWeather = jsonResponse["weather"].array![0]
                        let jsonTemp = jsonResponse["main"]
                        let iconName = jsonWeather["icon"].stringValue
                        let description = jsonWeather["description"].stringValue

                        weatherIcon.image = UIImage(named: iconName)
                        temperatureLabel.text = "\(Int(round(jsonTemp["temp"].doubleValue)))"
                        dataIndication.text = description
                        weatherSettings.cityLabelUpdate(city: 1, cityLabel: cityLabel, dayLabel: dayLabel)
                        weatherSettings.backGroundColor(iconName: iconName, temperatureFont: temperatureFont)
                    }
                })
        }
    }
}
