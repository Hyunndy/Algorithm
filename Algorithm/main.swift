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
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    
    // 깊이 - DFS 버전
    //    func maxDepth(_ root: TreeNode?) -> Int {
    //        if root == nil {
    //            return 0
    //        }
    //
    //        let left = maxDepth(root?.left)
    //        let right = maxDepth(root?.right)
    //
    //        return max(left, right) + 1
    //    }
    
    
    // 깊이 - BFS
    func maxDepth(_ root: TreeNode?) -> Int {
        
        var depth = 0
        
        if root == nil {
            return 0
        }
        
        root?.val = 1
        var q = Queue(enQueue: [root])
        while !q.isEmpty {
            let curNode = q.pop()
            if curNode != nil {
                depth = max(depth, curNode?.val ?? 0)
            }
            
            if curNode?.left != nil {
                curNode?.left?.val = depth + 1
                q.push(element: curNode?.left)
            }
            if curNode?.right != nil {
                curNode?.right?.val = depth + 1
                q.push(element: curNode?.right)
            }
        }
        
        return depth
    }
}
