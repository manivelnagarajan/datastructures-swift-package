//
//  BSTreeTests.swift
//  
//
//  Created by Manivel Nagarajan on 11/07/20.
//

import XCTest
@testable import Data_Structures_and_Algorithms_In_Swift

final class BSTreeTests: XCTestCase {
    var tree = BSTree()
    
    func testInsert() {
        tree = BSTree()
        tree.insert(2)
        tree.insert(4)
        tree.insert(3)
        XCTAssertTrue(tree.root?.value == 2)
        XCTAssertTrue(tree.root?.right?.left?.value == 3)
        XCTAssertTrue(tree.root?.right?.value == 4)
    }
    
    func testLookup() {
        tree = BSTree()
        tree.insert(9)
        tree.insert(4)
        tree.insert(6)
        tree.insert(20)
        tree.insert(170)
        tree.insert(15)
        tree.insert(1)
        XCTAssertTrue(tree.lookup(170)?.value == 170)
    }
    
    func testRemove() {
        tree = BSTree()
        tree.insert(9)
        tree.insert(4)
        tree.insert(6)
        tree.insert(20)
        tree.insert(170)
        tree.insert(15)
        tree.insert(1)
        XCTAssertTrue(tree.lookup(170)?.value == 170)
        tree.remove(170)
        XCTAssertNil(tree.lookup(170))
    }
}
