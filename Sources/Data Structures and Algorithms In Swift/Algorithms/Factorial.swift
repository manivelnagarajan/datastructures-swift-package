//
//  Factorial.swift
//  
//
//  Created by Manivel Nagarajan on 02/08/20.
//

import Foundation

extension Int {
    
    func  previous() -> Int {
        return self - 1
    }
    
    func factorial() -> Int {
        if self == 0 {
            return 1
        }
        if self <= 2 {
            return self
        }
        return self * previous().factorial()
    }
}
