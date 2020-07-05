//
//  Stack.swift
//  
//
//  Created by Manivel Nagarajan on 05/07/20.
//

import Foundation

//Stack implementation using LinkedList
struct Stack<Element: Equatable> {
    
    var top: Node<Element>?
    var bottom: Node<Element>?
    var length = 0
    
    var peek: Node<Element>? {
        return top
    }
    
    mutating func push(_ value: Element) {
        let newNode = Node(data: value)
        if length == 0 {
            top = newNode
            bottom = newNode
        } else {
            let holdingPointer = top
            top = newNode
            top?.next = holdingPointer
        }
        length += 1
    }
    
    mutating func pop() {
        if top == nil {
            return
        }
        if top == bottom {
            bottom = nil
        }
        let holdingPointer = top?.next
        top = top?.next
        top?.next = holdingPointer?.next
        length -= 1
    }
}
