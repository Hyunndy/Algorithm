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
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var result = [Int]()
        var dic: [Int: Int] = [:]
        
        for (idx, num) in nums.enumerated() {
            if let value = dic[target - num] {
                result = [value, idx].sorted()
                break
            }
            
            dic.updateValue(idx, forKey: num)
        }
        
        return result
    }
}

print(Solution().twoSum([3,2,3], 6))
