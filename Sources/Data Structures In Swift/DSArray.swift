//
//  DSArray.swift
//  
//
//  Created by Manivel Nagarajan on 25/06/20.
//
import Foundation

struct DSArray<Element> {
    
    var length: Int = 0
    var data: [Int: Element] = [:]
    
    func get(at index: Int) -> Element? {
        return data[index]
    }
    
    mutating func append(_ value: Element) {
        data[length] = value
        length += 1
    }
    
    mutating func deleteLast() {
        data.removeValue(forKey: length - 1)
        length -= 1
    }
    
    mutating func delete(at index: Int) {
        shiftElements(index)
        deleteLast()
    }
    
    mutating func insert(_ value: Element, at index: Int) {
        for i in stride(from: length, to: index, by: -1) {
            data[i] = data[i - 1]
        }
        data[index] = value
    }
    
    fileprivate mutating func shiftElements(_ index: Int) {
        for i in index...length - 1 {
            data[i] = data[i + 1]
        }
    }
}




