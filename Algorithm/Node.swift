////
////  Node.swift
////  Algorithm
////
////  Created by hyunndy on 2023/03/15.
////
//
//import Foundation
//
//class Node<T> {
//    var value: T
//    var prev: Node<T>?
//    var next: Node<T>?
//    
//    init(value: T, prev: Node<T>? = nil, next: Node<T>? = nil) {
//        self.value = value
//        self.prev = prev
//        self.next = next
//    }
//}
//
//class LinkedList_Tail {
//    var head: Node<Int>?
//    var tail: Node<Int>?
//    
//    init(head: Node<Int>? = nil, tail: Node<Int>? = nil) {
//        self.head = head
//        self.tail = tail
//    }
//    
//    // for문 안돌기 때문에 O(1)
//    func append(value: Int) {
//        let newNode = Node<Int>(value: value)
//        
//        if self.head == nil {
//            self.head = newNode
//            self.tail = newNode
//        } else {
//            // 맨 뒤의 Node가 NewNode를 가리켜야 이어지게 되므로 맨 뒤의 Node 연결부터 한다.
//            self.tail?.next = newNode
//            // 연결하면 tail 이라는 포인터를 옮겨준다.
//            self.tail = self.tail?.next
//        }
//    }
//}
//
//class LinkedList {
//    var head: Node<Int>?
//    var size: Int = 0
//    
//    init(head: Node<Int>? = nil) {
//        self.head = head
//    }
//    
//    func append(value: Int) {
//        let newNode = Node<Int>(value: value)
//        
//        // 헤더가 아무 Node도 가리키지 않을 때
//        if self.head == nil {
//            self.head = newNode
//        } else {
//            
//            // 맨 뒤의 Node가 newNode를 가리켜야 한다.
//            var currentNode = self.head
//            while(currentNode?.next != nil) {
//                currentNode = currentNode?.next
//            }
//            
//            currentNode?.next = newNode
//        }
//    }
//    
//    func get(idx: Int) -> Node<Int>? {
//    
//        var resultNode: Node<Int>? = nil
//        var currentNode = self.head
//        
//        /// 1. while 사용 방법
//        /*
//        while currentNode?.next != nil {
//            if curIdx == idx {
//                resultNode = currentNode
//                break
//            }
//            
//            currentNode = currentNode?.next
//            curIdx += 1
//        }
//        
//        if curIdx == idx {
//            resultNode = currentNode
//        }
//         */
//        
//        for _ in 0..<idx {
//            currentNode = currentNode?.next
//        }
//        
//        return currentNode
//    }
//    
//    func insert(at idx: Int, value: Int) {
//        let newNode = Node<Int>(value: value)
//        
//        var prevNode = self.head
//        if head == nil {
//            newNode.next = self.head
//            self.head = newNode
//        } else {
//            if idx == 0 {
//                newNode.next = self.head
//                self.head = newNode
//            } else {
//                for _ in 0..<idx - 1 {
//                    if prevNode?.next == nil { break }
//                    
//                    prevNode = prevNode?.next
//                }
//                
//                newNode.next = prevNode?.next
//                prevNode?.next = newNode
//            }
//
//        }
//    }
//    
//    func remove(at idx: Int) {
//        if head == nil {
//            return
//        } else {
//            if idx == 0 {
//                self.head = self.head?.next
//            } else {
//                var prevNode = self.head
//                var currentNode = self.head
//                for _ in 0..<idx - 1 {
//                    prevNode = prevNode?.next
//                    currentNode = currentNode?.next
//                }
//                
//                // CurrentNode는 (idx - 1) 까지 온거에서 1번 더 가면 된다.
//                currentNode = currentNode?.next
//                prevNode?.next = currentNode?.next
//            }
//        }
//    }
//}
