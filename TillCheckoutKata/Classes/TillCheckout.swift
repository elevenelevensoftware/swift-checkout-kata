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
        
        var result: Double
        
        switch input {
            
        case productCodeA:
            result = productCodeAPrice
        case productCodeB:
            result = productCodeBPrice
        case productCodeC:
            result = productCodeCPrice
        default:
            result = 0.0
       }
        
        return result
    }
    
}
