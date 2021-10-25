//
//  FourSum.swift
//  Leet
//
//  Created by 58 on 2021/10/25.
//

import Cocoa

class RemoveNthFromEnd: NSObject {

    
   static func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        if n == 0 {
            
            return head
        }
        
        let dummyHead = ListNode(val: -1, next: head!)
        
        var slow = dummyHead
        var fast = dummyHead
        
        for _ in 0 ..< n {
            fast = fast.next!
        }
        
        while fast.next != nil{
            fast = fast.next!
            slow = slow.next!
        }
        
        slow.next = slow.next?.next
        
        return dummyHead.next
        
    }
}
