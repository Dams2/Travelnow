//
//  FixerApi.swift
//  Travelnow
//
//  Created by Damien Rojo on 16/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import Foundation

struct ExchangeApi: Codable {
    
    let success: Bool?
    let timestamp: Int?
    let base: String?
    let date: Int?
    let rates: [String: Double]?
}

let urlString = "http://data.fixer.io/api/latest?access_key=e87b7aaf13a4b6950601ce3cde2612d0"
let url = URL(string: urlString)

class FixerApi {
    
    var urlString = "http://data.fixer.io/api/latest?access_key=e87b7aaf13a4b6950601ce3cde2612d0"
    
    let success: String
    let timestamp: Int
    let base: String
    let date: Int
    let rates: [String: Int]
    
    init(urlString: String, success: String, timestamp: Int, base: String, date: Int, rates: [String: Int]) {
        self.urlString = urlString
        self.success = success
        self.timestamp = timestamp
        self.base = base
        self.date = date
        self.rates = rates
    }
}
