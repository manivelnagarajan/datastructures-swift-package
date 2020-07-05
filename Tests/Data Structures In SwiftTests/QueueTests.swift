//
//  QueueTests.swift
//  
//
//  Created by Manivel Nagarajan on 05/07/20.
//

import XCTest
@testable import Data_Structures_In_Swift

final class QueueTests: XCTestCase {
    var queue: Queue<Int> = Queue()

    func testEnqueue() {
        queue = Queue()
        queue.enqueue(1)
        XCTAssertTrue(queue.peek == 1)
        XCTAssertTrue(queue.last?.data == 1)
        queue.enqueue(2)
        XCTAssertTrue(queue.peek == 1)
    }
    
    func testDequeue() {
        queue = Queue()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        XCTAssertTrue(queue.first?.data == 1)
        queue.dequeue()
        XCTAssertTrue(queue.first?.data == 2)
        queue.dequeue()
        XCTAssertTrue(queue.first?.data == 3)
        queue.dequeue()
        XCTAssertNil(queue.first)
        XCTAssertNil(queue.last)
        XCTAssertTrue(queue.length == 0)
    }
    
    func testQueueLength() {
        queue = Queue()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        XCTAssertTrue(queue.length == 3)
        queue.dequeue()
        XCTAssertTrue(queue.length == 2)
    }
}
