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
    
    public mutating func push(_ element: [T]) {
        stack.append(contentsOf: element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()
    }
}
