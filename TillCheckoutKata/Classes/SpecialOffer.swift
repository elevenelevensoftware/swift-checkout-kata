//
//  SpecialOffer.swift
//  TillCheckoutKata
//
//  Created by Ian Wells on 24/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class SpecialOffer {
    var productCode: String
    var noOfItemsForDiscount: Int
    var specialOfferDiscount: Double
    
    init(productCode: String, noOfItemsForDiscount: Int, specialOfferDiscount: Double) {
        self.productCode = productCode
        self.noOfItemsForDiscount = noOfItemsForDiscount
        self.specialOfferDiscount = specialOfferDiscount
    }
}
