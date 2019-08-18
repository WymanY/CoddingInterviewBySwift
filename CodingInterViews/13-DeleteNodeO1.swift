//
//  13-DeleteNodeO1.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 在O(1)时间内删除链表的节点
 */

func deleteNode(head:inout ListNode?,toBeDeleted:inout ListNode?) {
    guard head != nil && toBeDeleted != nil else {
        print("无法删除由于不存在链表或者待删除的为空")
        return
    }
    
    if toBeDeleted!.next != nil {//删除的不是尾节点
        let next = toBeDeleted!.next
        toBeDeleted!.val = next!.val
        toBeDeleted?.next = next!.next
    } else if head == toBeDeleted { //只有一个节点的情况，这里需要添加Equable协议的实现
        head = nil
    } else {//删除的是尾节点，且有很多节点
        var curNode:ListNode = head!
        while curNode.next != toBeDeleted! {
            curNode = curNode.next!
        }
        toBeDeleted = nil
    }
    
}
