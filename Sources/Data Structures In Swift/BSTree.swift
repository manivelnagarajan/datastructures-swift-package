//
//  BSTree.swift
//  
//
//  Created by Manivel Nagarajan on 11/07/20.
//

import Foundation

class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(value: Int) {
        self.value = value
    }
}

struct BSTree {
    var root: TreeNode?
    
    mutating func insert(value: Int) {
        let newNode = TreeNode(value: value)
        if root == nil {
            root = newNode
        } else {
            var currentNode = root
            while currentNode != nil {
                if value < currentNode!.value {
                    if currentNode?.left == nil {
                        currentNode?.left = newNode
                        return
                    }
                    currentNode = currentNode?.left
                } else if value > currentNode!.value {
                    if currentNode?.right == nil {
                        currentNode?.right = newNode
                        return
                    }
                    currentNode = currentNode?.right
                }
            }
        }
    }
    
    func lookup(_ value: Int) -> TreeNode? {
        if root == nil {
            return nil
        }
        
        var currentNode = root
        while currentNode != nil {
            if value < currentNode!.value {
                currentNode = currentNode?.left
            } else if value > currentNode!.value {
                currentNode = currentNode?.right
            } else if value == currentNode!.value {
                return currentNode
            }
        }
        return nil
    }
    
    func remove(value: Int) {
        
    }
}
