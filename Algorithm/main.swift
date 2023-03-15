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

/**
 방문기록과 동일한 작동을하는 BrowserHistory Class를 구현한다.
 구현할 브라우저는
 homePage에서 시작된다 -> head
 다른 url을 방문할 수 있다.
 
 1) input, output = string
 2) 최대 5000번 호출. for문이 O(n)이니까 O(5000) ?
 */

/*
 BrowserHistory를 LinkedList라고 할 때
 Node = url, next
 */

class BrowserHistory {

    var head: Node<String>?
    var current: Node<String>?
    
    init(_ homepage: String) {
        let newNode = Node<String>(value: homepage)
        self.head = newNode
        self.current = newNode
    }
    
    func visit(_ url: String) {
        
        let newNode = Node<String>(value: url, prev: self.current)
        self.current?.next = newNode
        self.current = newNode
    }
    
    func back(_ steps: Int) -> String {
        
        var currentNode = self.current
        for _ in 0..<steps {
            if currentNode?.prev == nil {
                currentNode = self.head
                break
            }
            currentNode = currentNode?.prev
        }
        
        self.current = currentNode
        return currentNode?.value ?? ""
    }
    
    func forward(_ steps: Int) -> String {
        var currentNode = self.current
        for _ in 0..<steps {
            if currentNode?.next == nil {
                break
            }
            currentNode = currentNode?.next
        }
        
        self.current = currentNode
        return currentNode?.value ?? ""
    }
}

let browserHistory = BrowserHistory("leetcode.com")
browserHistory.visit("google.com")
browserHistory.visit("facebook.com")
browserHistory.visit("youtube.com")
print(browserHistory.back(1))
print(browserHistory.back(1))
print(browserHistory.forward(1))
browserHistory.visit("linkedin.com")
print(browserHistory.forward(2))
print(browserHistory.back(2))
print(browserHistory.back(7))

/*
 [null,null,null,null,"facebook.com","google.com","facebook.com",null,"linkedin.com","google.com","leetcode.com"]
 */
/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */
