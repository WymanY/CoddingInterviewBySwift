//
//  15-FindKthNodeToTail.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

//输入一个链表，输出该链表中倒数第k个结点。
func findKthNodeToTail(root:ListNode?, k:Int) -> ListNode? {
    guard let h = root else {
        print("root节点不能为空")
        return nil
    }
    
    var slow:ListNode? = h
    var fast:ListNode? = h
    var i = 0
    while fast != nil && i < k - 1  {
        fast = fast!.next
        i += 1
    }
    guard fast != nil else {
        print("link node len is less than k")
        return nil
    }
    
    while fast != nil {
        fast = fast!.next
        slow = slow!.next
    }
    return slow
    
}
