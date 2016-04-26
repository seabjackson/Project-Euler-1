//
//  main.swift
//  NumberSpiralDiagonals
//
//  Created by lily on 4/26/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

func sumOfSpiralDiagonals(num: Int) -> Int  {
    return 4 * num * num - 6 * num + 6
}

// reduce starts at 1 since we begin counting the diagonals from 3

let sumDiagonals = (3...1001).filter {$0 % 2 != 0}.reduce(1) { $0 + sumOfSpiralDiagonals($1) }
print(sumDiagonals)