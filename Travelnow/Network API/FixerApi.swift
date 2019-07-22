//
//  FixerApi.swift
//  Travelnow
//
//  Created by Damien Rojo on 16/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class FixerApi {
    
    let fixerApiKey: String
    let symbols: String
    let from: String
    let to: String
    let amout: UILabel
    
    
    
    init(fixerApiKey: String, symbols: String, from: String, to: String, amout: UILabel) {
        self.fixerApiKey = fixerApiKey
        self.symbols = symbols
        self.from = from
        self.to = to
        self.amout = amout
    }
    
//    func fixerdata(textField: UITextField, exchangeRate: UILabel, dollarsResult: UILabel) {
//        Alamofire.request("http://data.fixer.io/api/latest?access_key=\(fixerApiKey)").responseJSON(completionHandler: {
//            response in
//            if let responseStr = response.result.value {
//                let jsonResponse = JSON(responseStr)
//                let jsonSuccess = jsonResponse["success"]
//                let jsonTimestamp = jsonResponse["timestamp"]
//                let jsonBase = jsonResponse["base"]
//                let jsonRates = jsonResponse["rates", "USD"]
//                
//                if let input = Float(textField.text) {
//                    let result = Float(jsonRates.doubleValue)
//                    exchangeRate.text = "Taux de change : \(result)"
//                    var dollars: Float
//                    dollars = input / result
//                    dollarsResult.text! = "\(String(dollars))$"
//                } else {
//                    dollarsResult.text! = "0$"
//                }
//            }
//        })
//    }

}

