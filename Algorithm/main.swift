//
//  main.swift
//  Algorithm
//
//  Created by hyunndy on 2023/03/06.
//

import Foundation

print("Hello, World!")

/**
 Swift 입력 처리 방법
 노말: readLine()
 */

var substring = [Int]()
while substring.count < 2 {
    let input = readLine()!
    let splitArray = input.split(separator: " ").map({ Int($0) })
    for string in splitArray {
        if let string = string, string > 0 && string < 10 {
            substring.append(string)
        }
    }
}

let float: Double = Double(substring[0]) / Double(substring[1])
print(float)
