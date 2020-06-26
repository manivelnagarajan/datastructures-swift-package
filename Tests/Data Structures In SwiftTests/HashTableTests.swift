//
//  HashMapTests.swift
//  
//
//  Created by Manivel Nagarajan on 26/06/20.
//

import XCTest
@testable import Data_Structures_In_Swift

final class HashTableTests: XCTestCase {
    
    var hashTable: HashTable<String, Int> = HashTable(capacity: 1)
    
    func testSetKeyValuePair() {
        hashTable = HashTable(capacity: 3)
        hashTable["a"] = 1
        hashTable["b"] = 2
        XCTAssertTrue(hashTable.count == 2)
    }
    
    func testAccessValue() {
        hashTable = HashTable(capacity: 3)
        hashTable["a"] = 1
        hashTable["test"] = 2
        XCTAssertTrue(hashTable["test"] == 2)
    }
    
    func testremoveValue() {
        hashTable = HashTable(capacity: 3)
        hashTable["test"] = 75
        hashTable.removeValue(for: "test")
        XCTAssertTrue(hashTable.count == 1)
        XCTAssertNil(hashTable["test"])
    }
}
