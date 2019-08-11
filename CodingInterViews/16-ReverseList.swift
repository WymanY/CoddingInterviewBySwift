//
//  16-ReverseList.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 输入一个链表，反转链表后，输出链表的所有元素。
 
 pNext = pNode->next;        //  保存其下一个节点
 pNode->next = pPrev;        //  指针指向反转
 // 下面开始指针的后移
 pPrev = pNode;              //  保存前一个指针
 pNode = pNext;              //  递增指针, 指向下一个结点
 
 
 #三指针滑动pPrev -> pNode -> pNext;
 
 A->B->C->D
 pre: A cur:B next:C
 pre = cur
 cur = cur.next
 next = cur.next
 cur->next = pre

 */


func reverseList(root:ListNode?) -> ListNode? {
    guard let h = root  else {
        print("list should not be empty")
        return nil
    }
    var pre:ListNode? = nil;
    var next:ListNode? = nil
    var cur:ListNode? = h
    
    while cur != nil {
        next = cur!.next
        cur!.next = pre
        pre = cur!
        cur = next
    }
    return pre
}
