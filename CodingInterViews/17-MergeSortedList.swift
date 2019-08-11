//
//  17-MergeSortedList.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 题目描述
 
 输入两个单调递增的链表，输出两个链表合成后的链表，当然我们需要合成后的链表满足单调不减规则。
 
 样例输入
 
 1 3 5 7 9 2 4
 
 样例输出
 
 1 2 3 4 5 7 9
 
 思路是，先判断l1.l2是否空，空就返回另一个
 先存储头部较小节点
 使用cur 节点去同事遍历两个链表，把较小的串到cur上并修改cur，
 串上剩余的节点
 */
func merge(l1:ListNode?, l2:ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }
    
    var p = l1
    var q = l2
    var head:ListNode
    if p!.val < q!.val {
        head = q!
        q = q?.next
    } else {
        head = p!
        p = p?.next
    }

    var cur:ListNode? = head
    
    while p != nil && q != nil {
        if p!.val < q!.val {
            cur?.next = p
            cur = cur?.next
            p = p!.next
        } else {
            cur?.next = q
            cur = cur?.next
            q = q!.next
        }
    }
    
    if p == nil {
        cur?.next = p
    }
    
    if q == nil {
        cur?.next = q
    }
    
    return head
    
}
