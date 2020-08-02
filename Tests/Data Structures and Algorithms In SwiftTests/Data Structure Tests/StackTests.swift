//
//  StackTests.swift
//  
//
//  Created by Manivel Nagarajan on 05/07/20.
//

import XCTest
@testable import Data_Structures_and_Algorithms_In_Swift

final class StackTests: XCTestCase {
    
    var stack: Stack<String> = Stack()
    
    func testPush() {
        stack = Stack()
        stack.push("Hi")
        XCTAssertTrue(stack.top?.data == "Hi")
        stack.push("How")
        XCTAssertTrue(stack.top?.data == "How")
        XCTAssertTrue(stack.bottom?.data == "Hi")
    }
    
    func testPop() {
        stack = Stack()
        stack.push("Hi")
        stack.push("How")
        stack.pop()
        XCTAssertTrue(stack.top?.data == "Hi")
        XCTAssertTrue(stack.bottom?.data == "Hi")
        stack.pop()
        XCTAssertNil(stack.top)
        XCTAssertNil(stack.bottom)
    }
    
    func testLength() {
        stack = Stack()
        stack.push("Hi")
        stack.push("How")
        XCTAssertTrue(stack.length == 2)
        stack.pop()
        XCTAssertTrue(stack.length == 1)
        stack.pop()
        XCTAssertTrue(stack.length == 0)
    }
    
    func testPeek() {
        stack = Stack()
        stack.push("Hi")
        stack.push("How are you?")
        XCTAssertTrue(stack.peek == "How are you?")
        stack.pop()
        XCTAssertTrue(stack.peek == "Hi")
        stack.pop()
        XCTAssertNil(stack.peek)
    }
}
