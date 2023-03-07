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
 
 두 배열을 곱해서 최소값을 구하려면 최소 * 최대를 곱해야함
 
 특정문자 제거 : components(separatedBy: "0").joined()
 진법 변환: init(radix)
 */


import Foundation

func getCount(target: Int, numberCount: Int) -> Int {
    var nextNumber = target
    
    for item in target..<1000000 {
        var newOneCount = String(item, radix: 2).filter( { $0 == "1"}).count
        if numberCount == newOneCount {
            nextNumber = item
            break
        }
    }
    
    return (nextNumber)
}

func solution(_ n:Int) -> Int
{
    var number = n
    var answer: Int = 0
    
    let nCount = String(n, radix: 2).filter( { $0 == "1"}).count
    answer = getCount(target: n, numberCount: nCount)
    
    return answer
}
