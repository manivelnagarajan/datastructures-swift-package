//
//  File.swift
//  
//
//  Created by Manivel Nagarajan on 02/08/20.
//

import XCTest
@testable import Data_Structures_and_Algorithms_In_Swift

final class FactorialTests: XCTestCase {
    func test_FactorialNumber() {
        XCTAssertTrue(0.factorial() == 1)
        XCTAssertTrue(1.factorial() == 1)
        XCTAssertTrue(2.factorial() == 2)
        XCTAssertTrue(3.factorial() == 6)
        XCTAssertTrue(4.factorial() == 24)
        XCTAssertTrue(5.factorial() == 120)
    }
}
