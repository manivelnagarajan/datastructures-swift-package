//
//  Graph.swift
//  
//
//  Created by Manivel Nagarajan on 11/07/20.
//

import Foundation

struct Graph<Element: Hashable> {
    var count = 0
    var adjacentList: Dictionary<Element, [Element]>  = [:]
    
    mutating func addVertex(_ node: Element) {
        adjacentList[node] = [];
        count += 1;
    }
    
    mutating func addEdge(_ node1: Element, _ node2: Element) {
        adjacentList[node1]?.append(node2)
        adjacentList[node2]?.append(node1)
    }
    
    func showConnections() {
        for key in adjacentList.keys {
            print(key, "---> ", adjacentList[key]!)
        }
    }
}
