//: Playground - noun: a place where people can play

import Cocoa

// This program reverses an array via recursion

var array = [1, 2, 3, 4, 5]

func reverseArray(var array: [Int], var firstIndex: Int, var lastIndex: Int) {
    
        let temp = array[lastIndex]
        array[lastIndex] = array[firstIndex]
        array[firstIndex] = temp
        
    if firstIndex == lastIndex || firstIndex - lastIndex == 1 {
        print(array)
        return
    }
    
    reverseArray(array, firstIndex: firstIndex + 1, lastIndex: array.count - 1)
}





