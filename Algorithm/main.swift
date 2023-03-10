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
 Int형은 -9 * 10(18승) ~ 9 * 10(18승https://github.com/layoutBox/PinLayout/blob/master/Example/PinLayoutSample/UI/Examples/CollectionViewExample/HouseCell.swift)
 
 두 배열을 곱해서 최소값을 구하려면 최소 * 최대를 곱해야함
 
 특정문자 제거 : components(separatedBy: "0").joined()
 진법 변환: init(radix)
 
 짝지어 제거하기 문제 처럼 이런 문제는 스택을 떠올리도록하자
 */


import Foundation


func solution(_ numbers:[Int], _ target:Int) -> Int {

    // 최종 return 될 값
    var count = 0
    
    func DFS(index: Int, sum: Int) {
        
        // 멈추기
        if (index == numbers.count) {
            if sum == target {
                count += 1
            }
            return
        }
        
        DFS(index: index+1, sum: sum - numbers[index])
        DFS(index: index+1, sum: sum + numbers[index])
    }
    
    DFS(index: 0, sum: 0)
    
    return count
}
