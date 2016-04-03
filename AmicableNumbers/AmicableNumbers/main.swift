//
//  main.swift
//  AmicableNumbers
//
//  Created by lily on 4/1/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

extension Int {
    var divisors: [Int] {
        guard self > 0 else { fatalError() }
        
        if self == 1 { return [1] }
        
        return (1...self/2).filter { self % $0 == 0 }
    }
    
    var hasAmicableCounterpart: Bool {
        return self.amicable != nil
    }
    
    var amicable: Int? {
        let testBaby = self.divisors.reduce(0) { $0 + $1 }
        
        if (testBaby.divisors.reduce(0) { $0 + $1 }) == self {
            if self != testBaby {
                return testBaby
            }
        }
        return nil
    }
    
}

func sumOfAmicableNumbers() {
    let sum = (1..<10000).filter {$0.hasAmicableCounterpart}.reduce(0) { $0 + $1 }
    print("\(sum)")
    
}
sumOfAmicableNumbers()
print("\(220.hasAmicableCounterpart)")

[1, 2, 3, 4, 5]