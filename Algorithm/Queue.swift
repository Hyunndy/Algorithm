//
//  Queue.swift
//  Algorithm
//
//  Created by hyunndy on 2023/03/15.
//

import Foundation

/**
 Swift에는 파이썬의 Deque가 없음
 Swift의 reversed()는 시간복잡도가 O(1) 임
 
 */
class Queue<T> {
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty: Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    init(enQueue: [T]) {
        self.enQueue = enQueue
    }
    
    func push(element: T) {
        enQueue.append(element)
    }
    
    func pop() -> T {
        if deQueue.isEmpty {
            // swift에서는 reversed의 시간 복잡도가 O(1)
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        
        return deQueue.popLast()!
    }
}

// 앞 뒤에서 pop이 가능한 Queue
class Deque<T> {
    var enqueue: [T]
    var dequeue: [T] = []
    
    var count: Int {
        return enqueue.count + dequeue.count
    }
    
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    
    init(enqueue: [T]) {
        self.enqueue = enqueue
    }
    
    func pushFirst(element: T) {
        dequeue.append(element)
    }
    
    func pushLast(element: T) {
        enqueue.append(element)
    }
    
    func popFirst() -> T {
        if dequeue.isEmpty == true {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        
        // 선행선출이기 때문?
        return dequeue.popLast()!
    }
    
    func popLast() -> T {
        if enqueue.isEmpty {
            enqueue = dequeue.reversed()
            dequeue.removeAll()
        }
        
        return enqueue.popLast()!
    }
}

