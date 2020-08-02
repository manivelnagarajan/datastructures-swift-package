//
//  Queue.swift
//  
//
//  Created by Manivel Nagarajan on 05/07/20.
//

import Foundation

//First In First Out
struct Queue<Element: Equatable> {
    
    var first: Node<Element>?
    var last: Node<Element>?
    var length = 0
    
    var peek: Element? {
        return first?.data
    }
    
    mutating func enqueue(_ value: Element) {
        let newNode = Node(data: value)
        if length == 0 {
            first = newNode
            last = newNode
        } else {
            last?.next = newNode
            last = newNode
        }
        length += 1
    }
    
    mutating func dequeue() {
        if first == nil {
            return
        }
        if first == last {
            last = nil
        }
        first = first?.next
        length -= 1
    }
}
