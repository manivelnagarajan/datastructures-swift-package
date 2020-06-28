//
//  DoublyLinkedList.swift
//  
//
//  Created by Manivel Nagarajan on 28/06/20.
//

import Foundation

class DoublyNode<Element> {
    var data: Element!
    var prev: DoublyNode<Element>?
    var next: DoublyNode<Element>?

    init(data: Element, prev: DoublyNode<Element>? = nil, next: DoublyNode<Element>? = nil) {
        self.data = data
        self.prev = prev
        self.next = next
    }
}

struct DoublyLinkedList<Element> {
    
    var head: DoublyNode<Element>?
    var tail: DoublyNode<Element>?
    var count = 0
    
    func value(at index: Int) -> Element? {
        return self.traverseToIndex(index: index)?.data
    }
    
    mutating func append(value: Element) {
        let newNode = DoublyNode(data: value)
        newNode.prev = self.tail
        if count == 0 {
            self.head = newNode
        } else {
            self.tail?.next = newNode
        }
        self.tail = newNode
        count += 1
    }
    
    mutating func prepend(value: Element) {
        let newNode = DoublyNode(data: value)
        self.head?.prev = newNode
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
        let newNode = DoublyNode(data: value)
        let leader = self.traverseToIndex(index: index - 1)
        newNode.prev = leader
        let follower = leader?.next
        follower?.prev = newNode
        leader?.next = newNode
        newNode.next = follower
        count += 1
    }
    
    mutating func delete(at index: Int) {
        let leader = traverseToIndex(index: index - 1)
        let unwantedNode = leader?.next
        let follower = unwantedNode?.next
        follower?.prev = leader
        leader?.next = follower
        count -= 1
    }
    
    fileprivate func traverseToIndex(index: Int) -> DoublyNode<Element>? {
        var currentNode = self.head
        var counter = 0
        while counter != index {
            currentNode = currentNode?.next
            counter += 1
        }
        return currentNode
    }
}

