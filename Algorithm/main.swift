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

//var linkedList = LinkedList()
//linkedList.append(value: 1)
//linkedList.append(value: 2)
//linkedList.append(value: 3)
//linkedList.append(value: 4)
//
//linkedList.insert(at: 0, value: 100)
//print(linkedList.get(idx: 0)?.value)
//
//print(linkedList.get(idx: 0)?.value)
//print(linkedList.get(idx: 1)?.value)
//print(linkedList.get(idx: 3)?.value)
//
//linkedList.insert(at: 2, value: 9)
//print(linkedList.get(idx: 2)?.value)

var linkedList = LinkedList_Tail()
linkedList.append(value: 1)
linkedList.append(value: 2)
linkedList.append(value: 3)
linkedList.append(value: 4)
