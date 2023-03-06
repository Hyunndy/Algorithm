//
//  main.swift
//  Algorithm
//
//  Created by hyunndy on 2023/03/06.
//

/**
 Swift 입력 처리 방법
 노말: readLine()
 지수 처리: pow
 Int형은 -9 * 10(18승) ~ 9 * 10(18승)
 */


import Foundation

var substring = [Int]()
while substring.count < 2 {
    let input = readLine()!
    let splitArray = input.split(separator: " ").map({ Int($0) })
    for string in splitArray {
        
        if let string = string, string >= -100000 && Double(string) <= 100000 {
            if substring.count > 1 {
                if substring[0] >= string {
                    substring.append(string)
                }
            } else {
                substring.append(string)
            }
        }
    }
}

let tuple = (substring[0], substring[1])
switch tuple {
case let (x,y) where x > y:
    print(">")
case let (x,y) where x < y:
    print("<")
case let (x,y) where x == y:
    print("==")
default:
    break
}
