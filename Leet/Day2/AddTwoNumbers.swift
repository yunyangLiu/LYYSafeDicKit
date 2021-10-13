//
//  AddTwoNumbers.swift
//  Leet
//
//  Created by 58 on 2021/10/13.
//

import Cocoa

/*
 
 
 给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。

 请你将两个数相加，并以相同形式返回一个表示和的链表。

 你可以假设除了数字 0 之外，这两个数都不会以 0 开头。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 */

class ListNode {
    
    var val:Int?
    
    var next: ListNode?
    
    init(val:Int,next:ListNode) {
        self.val = val
        self.next = next
    }
    
    init(){
        
    }
}

class AddTwoNumbers: NSObject {
    
    static func addTwoNumbers(node1:ListNode?, node2:ListNode?) -> ListNode {
         
        var l1 = node1;
        var l2 = node2;

        var nextNode = ListNode()

        let reslutListNode = nextNode
        var carry = 0;

        while l1 != nil && l2 != nil {
            let val = l1!.val! + l2!.val! + carry
            let tmepleNode = ListNode()
            tmepleNode.val = val % 10
            carry = val / 10
            nextNode.next = tmepleNode
            nextNode = tmepleNode
            l1 = l1!.next
            l2 = l2!.next
        }
        
       
        while l1 != nil {
            let val = l1!.val! + carry
            
            let tmepleNode = ListNode()

            tmepleNode.val = val % 10
            
            carry = val / 10

            nextNode.next = tmepleNode
            nextNode = tmepleNode
            l1 = l1!.next

        }
        
        while l2 != nil {
            let val = l2!.val! + carry
            
            let tmepleNode = ListNode()

            tmepleNode.val = val % 10
            
            carry = val / 10

            nextNode.next = tmepleNode
            nextNode = tmepleNode
            l2 = l2!.next

        }
        
        if carry != 0 {
            let tmepleNode = ListNode()
            tmepleNode.val = carry
            nextNode.next = tmepleNode

        }
        
        
        return reslutListNode.next!;
        
        
    }
    
    static func printNode(node:ListNode?) -> Void {
        
        var n = node
        
        while n != nil {
            print("\(n!.val!)")
            n = n!.next
        }
    }

}
