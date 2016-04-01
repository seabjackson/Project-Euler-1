//
//  main.swift
//  NumberLetterCounts
//
//  Created by Seab on 3/31/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

/* Project Euler

Number letter counts
Problem 17
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
*/

let numberSpellings = [
     1: "one",
     2: "two",
     3: "three",
     4: "four",
     5: "five",
     6: "six",
     7: "seven",
     8: "eight",
     9: "nine",
    10: "ten",
    11: "eleven",
    12: "twelve",
    13: "thirteen",
    14: "fourteen",
    15: "fifteen",
    16: "sixteen",
    17: "seventeen",
    18: "eighteen",
    19: "nineteen",
    20: "twenty",
    30: "thirty",
    40: "forty",
    50: "fifty",
    60: "sixty",
    70: "seventy",
    80: "eighty",
    90: "ninety"
]

extension Int {
    var inEnglish: String {
        var result = ""
        let hundreds = self / 100
        if hundreds > 0 {
            result += numberSpellings[hundreds]! + "hundred"
            if self % 100 != 0 {
                result += "and"
            }
        }
        
        let tens = (self % 100) / 10
        if tens == 1 {
            result += numberSpellings[self % 100]!
            return result
        }
        else if tens > 0 {
          result += numberSpellings[tens * 10]!
        }
        
        
        let ones = (self % 100) % 10
        if ones > 0 {
            result += numberSpellings[ones]!
        }
        return result
    }
}

var total = (1...999).reduce(0) {$0 + $1.inEnglish.characters.count} + "onethousand".characters.count
print(total)

// Played around with some test driven development


//func numLetterCounter(num: Int) -> Int {
//    if (1...9).contains(num) {
//        return numberSpellings[num]!.characters.count
//    } else {
//        return -3
//    }
//}
//
//
//func checkTrue(a: Int, b: Int) {
//    if b == numLetterCounter(a) {
//        print("a: \(a) b: \(b) PASSED")
//    } else {
//        print("a: \(a) b: \(b) FAILED")
//    }
//}
//
//checkTrue(1, b: 3)
//checkTrue(7, b: 5)
//checkTrue(1, b: 4)
//checkTrue(312, b: -1)







