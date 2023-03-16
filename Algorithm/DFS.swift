//
//  DFS.swift
//  Algorithm
//
//  Created by 유현지 on 2023/03/08.
//

import Foundation

//func DFS(graph: [String: [String]], start: String) -> Queue<String> {
//    var visitedQueue = Queue<String>()
//    var needVisitStack = Stack<String>()
//    
//    needVisitStack.push(start)
//    
//    while !needVisitStack.isEmpty {
//        
//        let node = needVisitStack.pop()!
//        if visitedQueue.contain(node) { continue }
//        
//        visitedQueue.push(node)
//        needVisitStack.push(graph[node] ?? [])
//    }
//    
//    return visitedQueue
//}
//
