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

//class Solution {
//    func longestConsecutive(_ nums: [Int]) -> Int {
//
//        var hashSet = Set(nums)
//
//        if hashSet.count == 0 || hashSet.count == 1 {
//            return hashSet.count
//        }
//
//        var maxCount = 1
//        for num in nums {
//            if hashSet.contains(num - 1) {
//                continue
//            }
//
//            var curCount = 1
//            var nowNum = num
//            while hashSet.contains(nowNum + 1) {
//                curCount += 1
//                nowNum += 1
//            }
//
//            maxCount = max(maxCount, curCount)
//        }
//
//       return maxCount
//    }
//}
//
//print(Solution().longestConsecutive([100,4,200,1,3,2]))


//Definition for a binary tree node.
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init(_ val: Int) {
//        self.val = val
//        self.left = nil
//        self.right = nil
//    }
//}
//
//class Solution {
//
//    // 깊이 - DFS 버전
//    //    func maxDepth(_ root: TreeNode?) -> Int {
//    //        if root == nil {
//    //            return 0
//    //        }
//    //
//    //        let left = maxDepth(root?.left)
//    //        let right = maxDepth(root?.right)
//    //
//    //        return max(left, right) + 1
//    //    }
//
//
//    // 깊이 - BFS
//    func maxDepth(_ root: TreeNode?) -> Int {
//
//        var depth = 0
//
//        if root == nil {
//            return 0
//        }
//
//        root?.val = 1
//        var q = Queue(enQueue: [root])
//        while !q.isEmpty {
//            let curNode = q.pop()
//            if curNode != nil {
//                depth = max(depth, curNode?.val ?? 0)
//            }
//
//            if curNode?.left != nil {
//                curNode?.left?.val = depth + 1
//                q.push(element: curNode?.left)
//            }
//            if curNode?.right != nil {
//                curNode?.right?.val = depth + 1
//                q.push(element: curNode?.right)
//            }
//        }
//
//        return depth
//    }
//}

/*
 Input: grid = [
 ["1","1","1","1","0"],
 ["1","1","0","1","0"],
 ["1","1","0","0","0"],
 ["0","0","0","0","0"]
 ]
 */


/**
 1) 암시적 그래프는 내가 직접 다음 노드를 지정해줘야 한다.
 2) BFS, DFS는 끝날 수 있다. 왜냐? 암시적 그래프니까 이어져 있지 않기 때문에
 3) 암시적 그래프는 visited 도 똑같은 형태로 만들어줘야 한다.
 4) 암시적 그래프는 완전 탐색을 위해 m*n 이중 for문 돌아야 한다.
 */
//class Solution {
//
//    func numIslands(_ grid: [[Character]]) -> Int {
//
//        var numOfIsland = 0
//        let col = grid.count // 4
//        let row = grid[0].count // 5
//        var visited = Array(repeating: Array(repeating: false,count: row), count: col)
//
//        func bfs(curLoc: (Int, Int)) {
//
//            // 일단 방문부터?
//            visited[curLoc.0][curLoc.1] = true
//            // 상하좌우 이동
//            var dx = [-1, 1, 0, 0]
//            var dy = [0, 0, 1, -1]
//            var q = Queue(enQueue: [(curLoc.0, curLoc.1)])
//            while !q.isEmpty {
//                let (curX, curY) = q.pop()
//
//                for idx in 0..<4 {
//                    let nextX = curX + dx[idx]
//                    let nextY = curY + dy[idx]
//
//                    if nextX >= 0 && nextX < col && nextY >= 0 && nextY < row {
//                        if grid[nextX][nextY] == "1" && visited[nextX][nextY] == false {
//                            visited[nextX][nextY] = true
//                            q.push(element: (nextX, nextY))
//                        }
//                    }
//                }
//            }
//        }
//
//        for colIdx in 0..<col {
//            for rowIdx in 0..<row {
//                // 1이 아니거나 한 번 방문한 곳은 방문하면 안됨
//                if grid[colIdx][rowIdx] == "1" && visited[colIdx][rowIdx] == false {
//                    bfs(curLoc: (colIdx, rowIdx))
//                    numOfIsland += 1
//                }
//            }
//        }
//
//        return numOfIsland
//    }
//}
//
//let a = Solution().numIslands([
//    ["1","1","1","1","0"],
//    ["1","1","0","1","0"],
//    ["1","1","0","0","0"],
//    ["0","0","0","0","0"]
//])
//
//print(a)

class Solution {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        
        let col = grid[0].count
        var visited = Array(repeating: Array(repeating: false, count: col), count: col)
        var path = -1
        
        if grid[0][0] == 1 {
            return -1
        }
        
            var dx = [-1, 1, 0, 0, 1, 1, -1, -1]
            var dy = [0, 0, -1, 1, -1, 1, -1, 1]
        let q = Queue(enQueue: [(0, 0, 1)])
        while !q.isEmpty {
            let curIdx = q.pop()
            
            if curIdx.0 == (col - 1) && curIdx.1 == (col - 1) {
                print("으악")
                path = curIdx.2
                break
            }
            
            for idx in 0..<dx.count {
                let newX = curIdx.0 + dx[idx]
                let newY = curIdx.1 + dy[idx]
                
                if newX >= 0 && newX < col && newY >= 0 && newY < col {
                    if visited[newX][newY] == false && grid[newX][newY] == 0 {
                        visited[newX][newY] = true
                        q.push(element: (newX, newY, curIdx.2 + 1))
                    }
                }
            }
        }
        
        return path
    }
}
