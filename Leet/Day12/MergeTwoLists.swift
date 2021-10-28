//
//  MergeTwoLists.swift
//  Leet
//
//  Created by 58 on 2021/10/26.
//

import Cocoa
/*
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。


 */
class MergeTwoLists: NSObject {
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil {
            return l2
        }
        
        if l2 == nil {
            return l1
        }

        let headNode = ListNode(-1)
    
        
        nextNode(node1: l1!, node2: l2!, node: headNode)
                
        return headNode.next
    
    }
    
    
    func nextNode(node1:ListNode, node2: ListNode, node:ListNode) {
        
            if node1.val < node2.val {
                let n = ListNode(node1.val)
                node.next = n
                if node1.next == nil {
                   n.next = node2
                   return
                }
                nextNode(node1: node1.next!, node2: node2, node: n)
            }else{
                let n = ListNode(node2.val)
                node.next = n
                if node2.next == nil {
                   n.next = node1
                   return
                }
                nextNode(node1: node1, node2: node2.next!, node: n)
            }
        
    
        
    }

    func mergeTwoLists1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        
        if l1 == nil {
            return l2
        }
        
        if l2 == nil {
            return l1
        }
        
        
        
        
        let headNode = ListNode(-1)
        
        var node = ListNode()
        
        headNode.next = node

        var nodeLeft = l1
        var nodeRight = l2

        var i = 0
        while nodeLeft != nil && nodeRight != nil{
            guard let node1 = nodeLeft, let node2 = nodeRight else { return  nil}
            
            if node1.val < node2.val {
                
                node.next = node1
                node = node1
                
                if node1.next == nil {
                    node1.next = node2
                    nodeLeft = nil
                }
                else{
                    nodeLeft = node1.next
                }
            }else{
                node.next = node2
                node = node2
                
                if node2.next == nil {
                    node2.next = node1
                    nodeRight = nil

                }
                else{
                    nodeRight = node2.next
                }
            }
            i += 1
        }

        AddTwoNumbers.printNode(node: headNode.next?.next)
        return headNode.next
    }
    
    
}
