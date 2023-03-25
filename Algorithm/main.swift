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

// 두 노드의 공통 조상 중 가장 낮은 Node를 찾아라
class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        if root == nil {
            return nil
        }
        
        // 내가 p나 q?? 내가 LCA인가봐!!
        if root?.val == p?.val || root?.val == q?.val {
            return root
        }
        
        let leftNode = lowestCommonAncestor(root?.left, p, q)
        let rightNode = lowestCommonAncestor(root?.right, p, q)
        
        // 헉 leftNode, rightNode 둘 다 있다고?! 그럼 내가 LCA?!
        if leftNode != nil && rightNode != nil {
            return root
        }
        
        // 너희 둘 중 하나가 있었구나.. 하지만 둘 다는 없으니 나는 LCA가 아니야
        if leftNode != nil {
            return leftNode
        }
        
        if rightNode != nil {
            return rightNode
        }
        
        // 둘 다 없으면 나 너무 쩌린데..
        return nil
    }
}
