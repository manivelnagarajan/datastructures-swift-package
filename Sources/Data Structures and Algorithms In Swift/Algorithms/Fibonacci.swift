//
//  Fibonacci.swift
//  
//
//  Created by Manivel Nagarajan on 02/08/20.
//

import Foundation

extension Int {
    
    func fibonacci() -> Int {
        if self < 2 {
            return self
        }
        return previous().fibonacci() + previous().previous().fibonacci()
    }
}
