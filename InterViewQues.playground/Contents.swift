//: Playground - noun: a place where people can play

import Cocoa

// This program reverses an array via recursion
// this is copying the array each time it is passed to the function

var array = [1, 2, 3, 4, 5]

func reverseArray(var array: [Int], var firstIndex: Int, var lastIndex: Int) {
    
        let temp = array[lastIndex]
        array[lastIndex] = array[firstIndex]
        array[firstIndex] = temp
        
    if firstIndex == lastIndex || firstIndex - lastIndex == 1 {
        print(array)
        return
    }
    
    reverseArray(array, firstIndex: firstIndex + 1, lastIndex: lastIndex - 1)
}

reverseArray(array, firstIndex: 0, lastIndex: array.count - 1)

// Todd's approach

extension MutableCollectionType where Index == Int {
   
    mutating func reverseArrayInPlace() {
        for i in startIndex ..< endIndex/2 {
            swap(&self[i], &self[endIndex - 1 - i])
        }
    }
}

var alpha = ["a", "b", "c"]
alpha.reverseArrayInPlace()





