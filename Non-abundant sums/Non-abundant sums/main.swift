//
//  main.swift
//  Non-abundant sums
//
//  Created by lily on 4/11/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

/*A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.*/

extension Int {
    var properDivisors: [Int] {
        guard self > 0 else { fatalError() }
        if self == 1 {
            return [1]
        }
        return (1...self/2).filter {self % $0 == 0 }
    }
    
    var perfect: Bool {
        return self == self.properDivisors.reduce(0) { $0 + $1}
    }
    
    var deficient: Bool {
        return self > self.properDivisors.reduce(0) { $0 + $1 }
    }
    
    var abundant: Bool {
        return self < self.properDivisors.reduce(0) { $0 + $1 }
    }
    
    var abundantNumbers: [Int] {
        guard self >= 12 else { fatalError() }
        return (12..<self).filter { $0.abundant }
    }
    
    
    
}

var arrayOfAbundance: [Int] = 28123.abundantNumbers
// print(arrayOfAbundance)

func sumOfAbundantNumbers(arrayOfAbundance: [Int]) -> [Bool] {
    var sum = [Bool](count: arrayOfAbundance.count, repeatedValue: false)
    for i in 0..<arrayOfAbundance.count {
        for j in i..<arrayOfAbundance.count {
//            sum.append(arrayOfAbundance[i] + arrayOfAbundance[j])
            if arrayOfAbundance[i] + arrayOfAbundance[j] > 28123 {
                break
            }
//            sum.append(arrayOfAbundance[i] + arrayOfAbundance[j])
            sum[arrayOfAbundance[i] + arrayOfAbundance[j]] = true
        }
    }
    return sum
}



//sumOfAbundantNumbers(arrayOfAbundance)
//var sumPairsAbundance: [Int] = sumOfAbundantNumbers(arrayOfAbundance)
//print(sumOfAbundantNumbers(arrayOfAbundance))

//func dictionaryOfSums() -> [Int: Bool] {
//    var dict: [Int: Bool] = [:]
//    for i in 0...28123 {
//        for j in 0..<sumPairsAbundance.count {
//            if i == sumPairsAbundance[j] {
//                dict[i] = true
//                break
//            }
//            else
//            {
//                dict[i] = false
//            }
//        }
//    }
//    return dict
//}

//var numsToAdd = dictionaryOfSums()
var numsToAdd = sumOfAbundantNumbers(arrayOfAbundance)
print(numsToAdd)

//func sumNum(numsToAdd: [Int: Bool]) -> Int {
//    var sum: Int = 0
//    for num in numsToAdd.keys {
//        if numsToAdd[num] != true {
//            sum += num
//            print(num)
//        }
//    }
//    return sum
//}
//
//let s = sumNum(numsToAdd)
//print(s)

//var notRepresentative = sumNum(numsToAdd)
//var answer = notRepresentative.reduce(0, combine: +)
////
//
//
//
////func cnbatan(arrayOfAbundance: [Int], sumOfAbundance: [Int]) -> [Int] {
////    var sum: [Int] = []
////    for i in 0..<arrayOfAbundance.count {
////        for j in 0..<sumPairsAbundance.count {
////            if arrayOfAbundance[i] == sumPairsAbundance[j] {
////                sum.append(arrayOfAbundance[i])
////            }
////        }
////    }
////    return sum
////}
////print(40.properDivisors)
////print(arrayOfAbundance)
////print(sumOfAbundantNumbers(arrayOfAbundance).sort())
//print(dictionaryOfSums())
//print(sumNum(numsToAdd))
//print(notRepresentative)
//print(answer)
//
//
//
