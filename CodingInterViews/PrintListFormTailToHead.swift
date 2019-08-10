//
//  PrintListFormTailToHead.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

public class ListNode<T:Comparable> {
    public var val:T
    public var next:ListNode?
    public init(_ val:T) {
        self.val = val
        self.next =  nil
    }
}

func buildListFrom(arr:[Int]) -> ListNode<Int> {
    var h:ListNode<Int>? = nil
    var node:ListNode<Int>?
    for val in arr {
        if h == nil {
            h = ListNode(val)
            node = h!
        } else {
            let newNode = ListNode(val)
            node!.next = newNode
            node = newNode
        }
    }
    return h!
}


func printListFromTailToHead(root:ListNode<Int>?) {
    guard var root = root else {
        return
    }
    
    var stack:Array<ListNode<Int>> = [root]
    while root.next != nil {
        stack.append(root.next!)
        root = root.next!
    }
    //倒序pop出去
    for node in stack.reversed() {
        print(node.val)
    }
}
