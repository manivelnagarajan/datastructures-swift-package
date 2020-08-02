//
//  LinkedListTests.swift
//  
//
//  Created by Manivel Nagarajan on 28/06/20.
//

import XCTest
@testable import Data_Structures_and_Algorithms_In_Swift

final class LinkedListTests: XCTestCase {
    
    var linkedList: LinkedList<String> = LinkedList()
    
    func testAppendElement() {
        linkedList = LinkedList()
        linkedList.append(value: "test")
        XCTAssertTrue(linkedList.count == 1)
        XCTAssertTrue(linkedList.head!.data == "test")
    }

    func testPrependElement() {
        linkedList = LinkedList()
        linkedList.prepend(value: "test")
        XCTAssertTrue(linkedList.count == 1)
        XCTAssertTrue(linkedList.head!.data == "test")
        XCTAssertTrue(linkedList.tail!.data == "test")
        linkedList.prepend(value: "newHead")
        XCTAssertTrue(linkedList.head!.data == "newHead")
        XCTAssertTrue(linkedList.tail!.data == "test")
        XCTAssertTrue(linkedList.count == 2)
    }
    
    func testInsertElement() {
        linkedList = LinkedList()
        linkedList.append(value: "0")
        linkedList.append(value: "3")
        linkedList.append(value: "4")
        linkedList.insert(value: "1", at: 1)
        linkedList.insert(value: "2", at: 2)
        XCTAssertTrue(linkedList.value(at: 1) == "1")
    }
    
    func testGetValue() {
        linkedList = LinkedList()
        linkedList.insert(value: "0", at: 0)
        linkedList.append(value: "1")
        linkedList.append(value: "3")
        linkedList.insert(value: "2", at: 2)
        XCTAssertTrue(linkedList.value(at: 2) == "2")
    }
    
    func testDelete() {
        linkedList = LinkedList()
        linkedList.insert(value: "0", at: 0)
        linkedList.append(value: "1")
        linkedList.append(value: "1")
        linkedList.append(value: "2")
        linkedList.delete(at: 2)
        XCTAssertTrue(linkedList.value(at: 2) == "2")
    }
}

