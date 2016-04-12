//
//  main.swift
//  NameScores
//
//  Created by lily on 4/7/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

let content = try! String(contentsOfFile: "p022_names.txt", encoding: NSUTF8StringEncoding).stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: "\""))
let names = content.componentsSeparatedByString("\",\"")
let sortedNames = names.sort {$0 < $1}

extension UnicodeScalar: ForwardIndexType {
    public func successor() -> UnicodeScalar {
        return UnicodeScalar(value + 1)
    }
}



extension String {
    //
    static let alpha = ("A"..."Z").map { String($0) }
    var alphaValue: Int {
        return self.characters.map { String($0) }.reduce(0) { $0 +  String.alpha.indexOf($1)! + 1}
    }
}

print(sortedNames.reduce(0) {$0 + (sortedNames.indexOf($1)! + 1) * $1.alphaValue })
print(sortedNames.indexOf("COLIN"))
print("COLIN".alphaValue)
//func alphabeticalValue(name: String) -> Int {
//    for i in name {
//        
//    }
//}
let totalNames = names.count
var sumOfEachName = [Int]()

