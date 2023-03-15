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
//    struct Stack<T> {
//        private var stack: [T] = []
//
//        var count: Int {
//            return stack.count
//        }
//
//        var isEmpty: Bool {
//            return stack.isEmpty
//        }
//
//        var last: T? {
//            return stack.last
//        }
//
//        public mutating func push(_ element: T) {
//            stack.append(element)
//        }
//
//        public mutating func push(_ element: [T]) {
//            stack.append(contentsOf: element)
//        }
//
//        public mutating func pop() -> T? {
//            return isEmpty ? nil : stack.popLast()
//        }
//
//        public mutating func top() -> T? {
//            return stack.last
//        }
//
//        public mutating func getIndex(where: T) -> Int {
//            return stack.firstIndex(where: $0 == T)
//        }
//    }
    
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        
        var result = Array.init(repeating: 0, count: temperatures.count)
        var stack = [(Int, Int)]()
        
        for (cur_day, cur_temp) in temperatures.enumerated() {
            
            while stack.last?.1 ?? 50000 < cur_temp {
                var (prev_day, prev_temp) = stack.popLast()!
                result[prev_day] = cur_day - prev_day
            }
            
            stack.append((cur_day, cur_temp))
        }
        
        return result
    }
}
