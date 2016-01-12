//
//  ImmutableButNotTests.swift
//  ImmutableButNotTests
//
//  Created by Son.Nguyen on 12/01/2016.
//  Copyright © 2016 son. All rights reserved.
//

import XCTest
@testable import ImmutableButNot

class ImmutableButNotTests: XCTestCase {
    
    func testSetInitialValues() {
        let array = ImmutablePrivateArray<String>()
        array.views = ["Test"]
        
        XCTAssert(array.immutableArray.count == 1, "Should contain 1 item")
    }
    
    func testImmutability() {
        let array = ImmutablePrivateArray<String>()
        array.views = ["Test"]
        array.views.append("Test2")
        
        XCTAssert(array.immutableArray.count == 1, "Should contain 1 item instead its \(array.immutableArray.count)")
    }
    
    func testAnotherImmutability() {
        let array = ImmutablePrivateArray<String>()
        array.otherValues = NSMutableArray(array: ["String"])
        array.otherValues.addObject("Test")
        
        XCTAssert(array.anotherArray.count == 2, "Should contain 2 items instead its \(array.anotherArray.count)")
    }
}
