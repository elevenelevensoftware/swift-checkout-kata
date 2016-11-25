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
    
    func scanItemsThroughTill(items: [String]) -> [String: Int] {
        
        var scannedItemsDictionary: [String: Int] = [:]
        
        for item in items {
            scannedItemsDictionary[item] = (scannedItemsDictionary[item] ?? 0) + 1
        }
        
        return scannedItemsDictionary
    }
    
    func applySpecialOfferDiscount(groupedItems: [String: Int]) -> Double {
        
        var result: Double = 0.0
        
        let specialOffer: [SpecialOffer] = [
            SpecialOffer(productCode: "A", noOfItemsForDiscount: 3, specialOfferDiscount: 0.30),
            SpecialOffer(productCode: "B", noOfItemsForDiscount: 2, specialOfferDiscount: 0.15)
        ]
        
        for offer in specialOffer {
            
            if(groupedItems[offer.productCode] != nil) {
                if(groupedItems[offer.productCode]! % offer.noOfItemsForDiscount == 0) {
                    let costBeforeDiscount = getIndividualItemPrice(input: offer.productCode) * Double(groupedItems[offer.productCode]!)
                    result = costBeforeDiscount - Double(offer.specialOfferDiscount)
                }
            }
        }
        
        return result
    }
}
