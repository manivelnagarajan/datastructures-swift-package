//
//  HashMap.swift
//  
//
//  Created by Manivel Nagarajan on 26/06/20.
//

import Foundation

struct HashTable<Key: Hashable, Value> {
    
    private(set) public var count = 0
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket]
    
    public init(capacity: Int) {
        precondition(capacity > 0)
        buckets = Array<Bucket>(repeating: [], count: capacity)
    }
    
    subscript(key: Key) -> Value? {
        get {
            return value(for: key)
        }
        set {
            if let value = newValue {
                set(key: key, value: value)
            } else {
                removeValue(for: key)
            }
        }
    }
    
    private func value(for key: Key) -> Value? {
        let index = self.index(for: key)
        let currentBucket = self.buckets[index]
        for element in currentBucket {
            if element.key == key {
                return element.value
            }
        }
        return nil
    }
    
    private mutating func set(key: Key, value: Value) {
        let index = self.index(for: key)
        let element = Element(key: key, value: value)
        if self.buckets[index].isEmpty {
            count += 1
        } else {
            self.buckets[index] = []
        }
        self.buckets[index].append(element)
    }
    
    mutating func removeValue(for key: Key) {
        let index = self.index(for: key)
        self.buckets[index] = []
    }
    
    func keys() -> [Key] {
        var keys: [Key] = []
        for bucket in buckets {
            if let element = bucket.first {
                keys.append(element.key)
            }
        }
        return keys
    }
    
    private func index(for key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
}
