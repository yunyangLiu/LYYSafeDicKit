//
//  MergeTwoLists.swift
//  Leet
//
//  Created by 58 on 2021/10/26.
//

import Cocoa

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

}
