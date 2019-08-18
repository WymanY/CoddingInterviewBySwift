//
//  37-FindFirstCommonNode.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 查找两个链表中的第一个公共节点
 有这种特征的两个链表
 1->2->3
        -> 6 -> 7
    4->5
 */

func findCommonNode(head1:ListNode?,head2:ListNode?) -> ListNode? {
    guard head1 != nil && head2 != nil  else {
        return nil
    }
    
    let len1 = getLenOfList(head: head1!)
    let len2 = getLenOfList(head: head2!)
    
    var longHead = head1
    var shortHead = head2
    var diff =  len1 - len2
    if len1 < len2 {
        shortHead = head1
        longHead = head2
        diff = len2 - len1
    }
    for _ in 0..<diff {
        longHead = longHead?.next
    }
    
    while longHead != nil && shortHead != nil && longHead!.val != shortHead!.val {
        longHead = longHead!.next
        shortHead = shortHead!.next
    }
    let firstCommonNode = longHead
    
    return firstCommonNode
}

private func getLenOfList(head:ListNode) -> Int {
    var p:ListNode? = head
    var len = 1//初始一个长度为
    while p != nil {
        p = p!.next
        len += 1
    }
    return len
}

