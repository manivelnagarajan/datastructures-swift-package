//
//  BSTreeTests.swift
//  
//
//  Created by Manivel Nagarajan on 11/07/20.
//

import XCTest
@testable import Data_Structures_In_Swift

final class BSTreeTests: XCTestCase {
    var tree = BSTree()
    
    func testInsert() {
        tree = BSTree()
        tree.insert(value: 2)
        tree.insert(value: 4)
        tree.insert(value: 3)
        XCTAssertTrue(tree.root?.value == 2)
        XCTAssertTrue(tree.root?.right?.left?.value == 3)
        XCTAssertTrue(tree.root?.right?.value == 4)
    }
    
    func testLookup() {
        tree = BSTree()
        tree.insert(value: 2)
        tree.insert(value: 4)
        tree.insert(value: 3)
        XCTAssertTrue(tree.lookup(4)?.value == 4)
    }
}
