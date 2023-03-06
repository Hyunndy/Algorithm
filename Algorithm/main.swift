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

var result = 0
var intArray = [Int]()
while intArray.count < 5 {
    let input = readLine()!
    let inputArray = input.split(separator: " ").map({ Int($0) })
    
    for item in inputArray {
        if let item = item, item >= 0 && item <= 9 {
            result += Int(pow(Double(item), 2))
            intArray.append(item)
        }
    }
}

print(result % 10)


//var substring = [Int64]()
//while substring.count < 2 {
//    let input = Int64(readLine()!)
//            if let string = input, Double(string) >= -pow(10, 1000) && Double(string) <= pow(10, 1000) {
//                                substring.append(string)
//    //    let splitArray = input.split(separator: " ").map({ Int($0) })
////    for string in splitArray {
//
////        if let string = string, string >= -10000 && string <= 10000 {
////            if substring.count > 1 {
////                if substring[0] >= string {
////                    substring.append(string)
////                }
////            } else {
////            }
////        }
//    }
//}
//
//print(substring[0] + substring[1])
//print(substring[0] - substring[1])
//print(substring[0] * substring[1])
