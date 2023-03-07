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

var prev = 1
var cur = 0 + prev

var n = 3

for _ in 3...n {

    let lastCur = cur
    cur = (lastCur + prev) % 1234567
    prev = lastCur
}

print(cur % 1234567)

func solution(_ n:Int) -> Int {
    
    
    
    return 0
}
