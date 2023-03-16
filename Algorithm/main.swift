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
    func longestConsecutive(_ nums: [Int]) -> Int {
        
        var dic: [Int: [Int]] = [:]
        var result: [Int: Int] = [:]
        for num in nums {
            dic.updateValue([num - 1, num + 1], forKey: num)
        }
        
        if dic.count == 0 || dic.count == 1 {
            return dic.count
        }
        
        for num in nums.sorted() {
            if let prevValue = dic[num]?.first, dic[prevValue] != nil  {
                result.updateValue(0, forKey: prevValue)
            }
            
            if let nextValue = dic[num]?.last, dic[nextValue] != nil  {
                result.updateValue(0, forKey: nextValue)
            }
        }
        
        for (key) in result.keys.sorted() {
            print("키 : \(key)")
        }
        
        var maxCount = 1
        var curCount = 1
        let sortedKeyArray = result.keys.sorted()
        var prevValue = sortedKeyArray.first ?? 0
        for (idx, key) in sortedKeyArray.enumerated() {
            if idx == 0 {
                prevValue = key
                continue
            }
            
            if prevValue + 1 == key {
                curCount += 1
            } else {
                curCount = 1
            }
            
            maxCount = max(maxCount, curCount)
            prevValue = key
        }
        
        return maxCount
    }
}

print(Solution().longestConsecutive([100,4,200,1,3,2]))
