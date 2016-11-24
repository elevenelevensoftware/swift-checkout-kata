//
//  TillCheckout.swift
//  TillCheckoutKata
//
//  Created by Ian Wells on 24/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class TillCheckout {
    
    let productCodeA = "A"
    let productCodeB = "B"
    let productCodeC = "C"
    
    let productCodeAPrice = 0.50
    let productCodeBPrice = 0.30
    let productCodeCPrice = 0.60
    
    func getIndividualItemPrice(input: String) -> Double {
        
        var result = 0.0
        
        if(input == productCodeA) {
            result = productCodeAPrice
        } else if(input == productCodeB) {
            result = productCodeBPrice
        } else if(input == productCodeC) {
            result = productCodeCPrice
        }
        
        return result
    }
    
}
