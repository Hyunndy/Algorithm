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
 Int형은 -9 * 10(18승) ~ 9 * 10(18)
 
 두 배열을 곱해서 최소값을 구하려면 최소 * 최대를 곱해야함
 
 특정문자 제거 : components(separatedBy: "0").joined()
 진법 변환: init(radix)
 
 짝지어 제거하기 문제 처럼 이런 문제는 스택을 떠올리도록하자
 */

import Foundation

class Solution {
    
    struct Stack<T> {
        private var stack: [T] = []
        
        var count: Int {
            return stack.count
        }
        
        mutating func push(element: T) {
            stack.append(element)
        }
        
        mutating func pop() -> T? {
            return stack.popLast()
        }
    }
    
    
    func isValid(_ s: String) -> Bool {
        var result = true
        var stack = Stack<Character>()
        
        for bracket in s {
            if bracket == "(" || bracket == "[" || bracket == "{" {
                stack.push(element: bracket)
            } else {
                let pop = stack.pop()
                if pop == nil {
                    result = false
                    break
                } else {
                    if bracket == ")" && pop == "(" {
                        continue
                    } else if bracket == "}" && pop == "{" {
                        continue
                    } else if bracket == "]" && pop == "[" {
                        continue
                    } else {
                        result = false
                        break
                    }
                }
            }
        }
        
        if stack.count > 0 {
            result = false
        }
        
        return result
    }
}
