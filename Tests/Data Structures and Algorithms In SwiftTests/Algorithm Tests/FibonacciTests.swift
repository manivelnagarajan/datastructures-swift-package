//
//  FibonacciTests.swift
//  
//
//  Created by Manivel Nagarajan on 02/08/20.
//

import XCTest
@testable import Data_Structures_and_Algorithms_In_Swift

final class FibonacciTests: XCTestCase {
    func test_fibonacci_number() {
        XCTAssertTrue(0.fibonacci() == 0)
        XCTAssertTrue(1.fibonacci() == 1)
        XCTAssertTrue(2.fibonacci() == 1)
        XCTAssertTrue(3.fibonacci() == 2)
        XCTAssertTrue(4.fibonacci() == 3)
        XCTAssertTrue(5.fibonacci() == 5)
        XCTAssertTrue(6.fibonacci() == 8)
        XCTAssertTrue(7.fibonacci() == 13)
    }
}
