//
//  TillCheckoutKataTests.swift
//  TillCheckoutKataTests
//
//  Created by Ian Wells on 24/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//
//  For more details see: http://manchester-codejo.com/kata/Checkout/


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
    
    func testGivenDuplicateItemsToScanThenShouldGiveTotalNoOfDuplicateItems() {
        let itemsToBuy = ["D","D","A","A","A","B","B","C","D","C","C","C"]
        let result = tillCheckout.scanItemsThroughTill(items: itemsToBuy)
        XCTAssertEqual(result["A"], 3)
        XCTAssertEqual(result["B"], 2)
        XCTAssertEqual(result["C"], 4)
        XCTAssertEqual(result["D"], 3)
    }
}
