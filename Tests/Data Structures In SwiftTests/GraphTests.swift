//
//  GraphTests.swift
//  
//
//  Created by Manivel Nagarajan on 12/07/20.
//

import XCTest
@testable import Data_Structures_and_Algorithms_In_Swift

final class GraphTests: XCTestCase {
    
    var graph: Graph<Int> = Graph()
    
    func testAddVertex() {
        graph = Graph()
        graph.addVertex(0)
        graph.addVertex(1)
        graph.addVertex(2)
        graph.addVertex(3)
        graph.addVertex(4)
        graph.addVertex(5)
        graph.addVertex(6)
        XCTAssertTrue(graph.count == 7)
    }
    
    func testAddEdges() {
        graph = Graph()
        graph.addVertex(0)
        graph.addVertex(1)
        graph.addVertex(2)
        graph.addVertex(3)
        graph.addVertex(4)
        graph.addVertex(5)
        graph.addVertex(6)
        graph.addEdge(3, 1)
        graph.addEdge(3, 4)
        graph.addEdge(4, 2)
        graph.addEdge(4, 5)
        graph.addEdge(1, 2)
        graph.addEdge(1, 0)
        graph.addEdge(0, 2)
        graph.addEdge(6, 5)
        graph.showConnections()
        XCTAssertTrue(graph.count == 7)
        XCTAssertTrue(graph.adjacentList[3]?.contains(1) ?? false)
        XCTAssertTrue(graph.adjacentList[1]?.contains(3) ?? false)
        XCTAssertTrue(graph.adjacentList[4]?.contains(2) ?? false)
        XCTAssertTrue(graph.adjacentList[4]?.contains(5) ?? false)
        XCTAssertTrue(graph.adjacentList[4]?.contains(3) ?? false)
    }
}
