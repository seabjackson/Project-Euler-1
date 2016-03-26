//
//  main.swift
//  BouncyNumbers
//
//  Created by lily on 3/25/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

// bouncyCounter

var bouncyCounter = 0
var currentNumber = 0
var numIsBouncy = false
var bouncyPercent: Double = 0.99

enum Direction {
    case Increasing
    case Decreasing
}


repeat {

    currentNumber += 1
    var direction: Direction? = nil
    
    
    let digits = String(currentNumber).characters.map { String($0) }
    digitTest: for (index, digit) in digits.enumerate() {
        guard index + 1 < digits.endIndex else {
            break
        }
        
        if digit < digits[index + 1] {
            // increasing
            if direction == nil {
                direction = .Increasing
            } else if direction! == .Decreasing {
                bouncyCounter += 1
                break digitTest
            }
        } else if digit > digits[index + 1] {
            // decreasing
            if direction == nil {
                direction = .Decreasing
            }  else if direction! == .Increasing {
                bouncyCounter += 1
                break digitTest
            }
        }

}
    
    
} while (Double(bouncyCounter) / Double(currentNumber)) <= bouncyPercent



