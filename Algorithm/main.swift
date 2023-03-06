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

var s = ""
var ans:Bool = true
var chStack = Stack<Character>()
for c in s {
    if c == "(" {
        chStack.push(c)
    } else if c == ")" {
        // 없는데 나온 경우
        if chStack.isEmpty == true {
            ans = false
            break
        } else {
            chStack.pop()
        }
    }
}

if chStack.count > 0 {
    ans = false
} else {
    ans = true
}
