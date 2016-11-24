//
//  TillCheckout.swift
//  TillCheckoutKata
//
//  Created by Ian Wells on 24/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class TillCheckout {
    
    let productLookUpDictionary: [String: Double] = [
        "A": 0.50,
        "B": 0.30,
        "C": 0.60,
        "D": 0.99
    ]
    
    func getIndividualItemPrice(input: String) -> Double {
        return productLookUpDictionary[input]!
    }
}
