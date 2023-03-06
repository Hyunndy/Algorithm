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

var input = Int(readLine()!)
if let input = input, input >= 1 && input <= 100 {
    
    for idx in 1...input {
        let stringArray = [String].init(repeating: "*", count: idx).joined()
        print(stringArray)
    }
}



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
