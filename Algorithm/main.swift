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
 */


import Foundation

a = A.sorted(by: { $0 < $1 })
b = B.sorted(by: { $0 > $1 })

for (idx, item) in a.enumerated() {
    ans += item * b[idx]
}
