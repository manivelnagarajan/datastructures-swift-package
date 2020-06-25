//
//  File.swift
//  
//
//  Created by Manivel Nagarajan on 25/06/20.
//

import XCTest
@testable import Data_Structures_In_Swift

final class DSArrayTests: XCTestCase {
    var array: DSArray<Int> = DSArray()

    func testEmptyArray() {
        array = DSArray()
        XCTAssertEqual(array.length, 0)
    }
    
    func testGetElement() {
        array = DSArray()
        array.append(1)
        array.append(2)
        array.append(3)
        XCTAssertEqual(array.get(at: 0), 1)
        XCTAssertEqual(array.get(at: 1), 2)
        XCTAssertEqual(array.get(at: 2), 3)
    }
    
    func testAppend() {
        array = DSArray()
        array.append(1)
        array.append(2)
        XCTAssertEqual(array.length, 2)
    }
    
    func testDeleteLast() {
        array = DSArray()
        array.append(1)
        array.append(2)
        array.deleteLast()
        XCTAssertEqual(array.length, 1)
        XCTAssertEqual(array.get(at: 0), 1)
    }
    
    func testDeleteAtSpecificIndex() {
        array = DSArray()
        array.append(1)
        array.append(2)
        array.append(3)
        array.delete(at: 1)
        XCTAssertEqual(array.length, 2)
        XCTAssertEqual(array.get(at: 1), 3)
    }
    
    func testInsertAtSpecificIndex() {
        array = DSArray()
        array.append(1)
        array.append(3)
        array.insert(2, at: 1)
        array.insert(4, at: 3)
        XCTAssertEqual(array.get(at: 1), 2)
        XCTAssertEqual(array.get(at: 2), 3)
        XCTAssertEqual(array.get(at: 3), 4)
    }
}

