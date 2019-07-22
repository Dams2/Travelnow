//
//  ExchangeViewController.swift
//  Travelnow
//
//  Created by Damien Rojo on 15/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ExchangeViewController: UIViewController {
    
    let fixerApiKey = "e87b7aaf13a4b6950601ce3cde2612d0"
    let symbols = "symbols=USD"
    
//    let fixerApi = FixerApi(fixerApiKey: "e87b7aaf13a4b6950601ce3cde2612d0", symbols: "&symbols=USD", from: "&from=EUR", to: "&to=EUR", amout: self.dollarsResult)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBOutlet weak var dollarsResult: UILabel!
    @IBOutlet weak var exchangeRate: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
    }
    
    @IBAction func convert(_ sender: UIButton) {
//        fixerApi.fixerdata()
        fixerdata()
    }
    
    func fixerdata() {
        Alamofire.request("http://data.fixer.io/api/latest?access_key=\(fixerApiKey)").responseJSON(completionHandler: {
            response in
            if let responseStr = response.result.value {
                let jsonResponse = JSON(responseStr)
//                let jsonSuccess = jsonResponse["success"]
//                let jsonTimestamp = jsonResponse["timestamp"]
//                let jsonBase = jsonResponse["base"]
                let jsonRates = jsonResponse["rates", "USD"]
                
                if let input = Float(self.textField.text!) {
                    let result = Float(jsonRates.doubleValue)
                    self.exchangeRate.text = "Taux de change : \(result)"
                    var dollars: Float
                    dollars = input / result
                    self.dollarsResult.text! = "\(String(dollars))$"
                } else {
                    self.dollarsResult.text! = "0$"
                }
            }
        })
    }


    

        /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
