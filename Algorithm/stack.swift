//
//  stack.swift
//  Algorithm
//
//  Created by hyunndy on 2023/03/07.
//

import Foundation

struct Stack<T> {
    private var stack: [T] = []
    
    var count: Int {
        return stack.count
    }
    
    var isEmpty: Bool {
        return stack.isEmpty
    }
    
    var last: T? {
        return stack.last
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()
    }
}

struct Queue<T> {
    private var queue: [T] = []
    
    var count: Int {
        return queue.count
    }
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func push(_ element: T) {
        queue.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}
