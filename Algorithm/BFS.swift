//
//  BFS.swift
//  Algorithm
//
//  Created by 유현지 on 2023/03/07.
//

import Foundation

/**
 그래프는 이차원 배열, 딕셔너리로 많이 하는데 보통 딕셔너리로 한다.
 
 BFS는 탐색된 노드들의 순서를 기본적으로 리턴한다.
 */
func BFS(graph: [String: [String]], start: String) -> Queue<String> {
    
    var visitedQueue = Queue<String>()
    var needVisitQueue = Queue<String>()
    
//    1. 탐색할 시작 노드를 needVisitQueue에 넣는다.
    needVisitQueue.push(start)
    
    while !needVisitQueue.isEmpty {
        
        // 2. 1의 값을 빼서 vistiedQueue에 존재하는 값인지 확인한다. 위 과정을 visitedQueue에 존재하지 않는 값이 나올 때 까지 반복하고, needVisitQueue가 비면 그 때 탐색이 끝난다.
        let node: String = needVisitQueue.pop()!
        if visitedQueue.contain(node) {
            continue
        }

        //    3. 추출된 값이 visitQueue에 존재하지 않으면, visitQueue에 추가한다.
        visitedQueue.push(node)
        
        //    4. visitQueue에 있는 값에 연결된 간선들(이차원 배열, 딕셔너리)을 모두 needVisitQueue에 추가한다.
        needVisitQueue.push(graph[node] ?? [])
        
    }
    
    return visitedQueue
}
