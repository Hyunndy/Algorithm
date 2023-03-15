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


func solution(_ numbers:[Int], _ target:Int) {
    
    // 두 정수가 저장되었다.
    // 한 정수랑, 다른 정수가 있어야한다.
    var result = false
    
    for number in numbers {
        if number > target {
            continue
        }
        
        for number2 in numbers {
            if number == number2 {
                continue
            }
            
            if number2 > target {
                continue
            }
            
            result = (number + number2) == target
            
            if result == true {
                break
            }
        }
        
        if result == true {
            break
        }
    }
    
    print(result)
}

solution([4,1,9,7,5,3,16], 14)
solution([2,1,5,7], 4)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    // 1. 일단 정렬
    var nums = nums.sorted()
    
    // 2. Two Pointer 사용.
    var left = 0
    var right = nums.count - 1
    
    var resultArray = [0, 0]
    
    for _ in nums {
        var sum = nums[left] + nums[right]
        
        if sum == target {
            left = nums.firstIndex(of: nums[left])!
            right = nums.lastIndex(of: right)!
            resultArray = [left, right]
            break
        }
        
        if sum < target {
            left += 1
        }
        
        if sum > target {
            right -= 1
        }
        
        if left == right {
            break
        }
    }
    
    return resultArray
}


print(twoSum([3,3], 6))
