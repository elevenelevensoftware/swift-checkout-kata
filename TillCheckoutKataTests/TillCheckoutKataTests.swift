//
//  TillCheckoutKataTests.swift
//  TillCheckoutKataTests
//
//  Created by Ian Wells on 24/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.

//  The code will be used by an electronic till that can only scan one item at a time. At the end of scanning the items the till system will request the total.
//  Goods are priced individually, however there are weekly special offers for when multiple items are bought. For example “A is 50 each or 3 for 130”.
//  Weekly offers change frequently. The initial prices and offers are as follows:
//

import XCTest
@testable import TillCheckoutKata

class TillCheckoutKataTests: XCTestCase {
    
    let tillCheckout = TillCheckout()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testProductWithCodeA_ShouldCostFiftyPence() {
        let result = tillCheckout.getIndividualItemPrice(input: "A")
        XCTAssertEqual(result, 0.50)
    }
    
    func testProductWithCodeB_ShouldCostThirtyPence() {
        let result = tillCheckout.getIndividualItemPrice(input: "B")
        XCTAssertEqual(result, 0.30)
    }
    
    func testProductWithCodeC_ShouldCostSixtyPence() {
        let result = tillCheckout.getIndividualItemPrice(input: "C")
        XCTAssertEqual(result, 0.60)
    }
    
    func testProductWithCodeD_ShouldCostNinetyNinePence() {
        let result = tillCheckout.getIndividualItemPrice(input: "D")
        XCTAssertEqual(result, 0.99)
    }
}
