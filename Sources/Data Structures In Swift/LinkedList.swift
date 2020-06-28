//
//  LinkedList.swift
//  
//
//  Created by Manivel Nagarajan on 27/06/20.
//

import Foundation

class Node<Element> {
    var data: Element!
    var next: Node?
    
    init(data: Element, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

struct LinkedList<Element> {

    var head: Node<Element>? = nil
    var tail: Node<Element>? = nil
    var count = 0
    
    func value(at index: Int) -> Element? {
        return self.traverseToIndex(index: index)?.data
    }
    
    mutating func append(value: Element) {
        let newNode = Node(data: value)
        if count == 0 {
            self.head = newNode
        } else {
            self.tail?.next = newNode
        }
        self.tail = newNode
        count += 1
    }
    
    mutating func prepend(value: Element) {
        let newNode = Node(data: value)
        newNode.next = self.head
        self.head = newNode
        if count == 0 {
            self.tail = newNode
        }
        count += 1
    }
    
    mutating func insert(value: Element, at index: Int) {
        if index >= count {
            append(value: value)
            return
        }
        let newNode = Node(data: value)
        let leader = self.traverseToIndex(index: index - 1)
        let holdingPointer = leader?.next
        leader?.next = newNode
        newNode.next = holdingPointer
        count += 1
    }
    
    mutating func delete(at index: Int) {
        let leader = traverseToIndex(index: index - 1)
        let unwantedNode = leader?.next
        leader?.next = unwantedNode?.next
        count -= 1
    }
    
    fileprivate func traverseToIndex(index: Int) -> Node<Element>? {
        var currentNode = self.head
        var counter = 0
        while counter != index {
            currentNode = currentNode?.next
            counter += 1
        }
        return currentNode
    }
}
