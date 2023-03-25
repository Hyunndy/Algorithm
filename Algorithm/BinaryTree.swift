//
//  BinaryTree.swift
//  Algorithm
//
//  Created by hyunndy on 2023/03/24.
//

import Foundation

class Node<T> {
    var value: T
    var left: Node<T>?
    var right: Node<T>?
    
    init(value: T, left: Node<T>? = nil, right: Node<T>? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

class BinaryTree<T> {
    var root: Node<T>
    
    init(root: Node<T>) {
        self.root = root
    }
}

func testBinaryTree() {
    let rootNode = Node(value: 1)
    let bt = BinaryTree(root: rootNode)
    bt.root.left = Node(value: 2)
    bt.root.right = Node(value: 3)
    bt.root.left?.left = Node(value: 4)
    bt.root.left?.right = Node(value: 5)
    bt.root.right?.left = Node(value: 6)
    bt.root.right?.right = Node(value: 7)
}
