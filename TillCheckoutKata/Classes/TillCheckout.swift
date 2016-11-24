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
    let productCodeAPrice = 0.50
    
    func getIndividualItemPrice(input: String) -> Double {
        
        var result = 0.0
        
        if(input == productCodeA) {
            result = productCodeAPrice
        }
        
        return result
    }
    
}
