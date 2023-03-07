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
 
 짝지어 제거하기 문제 처럼 이런 문제는 스택을 떠올리도록하자
 */


import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dic = [String: Int]()
    
    var amount = 1
    
    // [["의상의 이름", "의상의 종류"]]
    // 의상의 종류를 key 값으로 하고 value숫자만 하면 상관없는문제였음..대박!
    // 근데 안입는 경우도 있으니까 2로 초기화해줘야함
    for cloth in clothes {
        
        // key값이 안들어있다면!
        if let kind = dic[cloth[1]] {
            dic.updateValue(kind + 1, forKey: cloth[1])
        } else {
            dic.updateValue(2, forKey: cloth[1])
        }
    }
    
    for value in dic.values {
        amount *= value
    }
    
    amount -= 1
    
    return amount
}
