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
    
    mutating func insert(_ value: Int) {
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
    
    mutating func remove(_ value: Int) {
        if root == nil {
            return
        }
        
        var currentNode = root
        var parentNode: TreeNode? = nil
        while currentNode != nil {
            if value < currentNode!.value {
                parentNode = currentNode
                currentNode = currentNode?.left
            } else if value > currentNode!.value {
                parentNode = currentNode
                currentNode = currentNode?.right
            } else if value == currentNode!.value {
                
                if currentNode?.right == nil {
                    //Option 1: No right child
                    if parentNode == nil {
                        root = currentNode?.left
                    } else {
                        if currentNode!.value < parentNode!.value {
                            parentNode?.left = currentNode?.left
                        } else if currentNode!.value > parentNode!.value {
                            parentNode?.right = currentNode?.left
                        }
                    }
                } else if currentNode?.right?.left == nil {
                    //Option 2: Right child which doesn't have left child
                    if parentNode == nil {
                        root = currentNode?.right
                    } else {
                        if currentNode!.value < parentNode!.value {
                            parentNode?.left = currentNode?.right
                        } else if currentNode!.value > parentNode!.value {
                            parentNode?.right = currentNode?.right
                        }
                    }
                } else {
                    //Option 3: Right child that has a left child
                    var leftMost = currentNode?.right?.left
                    var leftMostParent = currentNode?.right
                    while leftMost?.left != nil {
                        leftMostParent = leftMost
                        leftMost = leftMost?.left
                    }
                    
                    leftMostParent?.left = leftMost?.right
                    leftMost?.left = currentNode?.left
                    leftMost?.right = currentNode?.right
                    
                    if parentNode == nil {
                        root = leftMost
                    } else {
                        if currentNode!.value < parentNode!.value {
                            parentNode?.left = leftMost
                        } else if currentNode!.value > parentNode!.value {
                            parentNode?.right = leftMost
                        }
                    }
                }
                return
            }
        }
    }
}
