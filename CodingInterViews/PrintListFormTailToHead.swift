//
//  PrintListFormTailToHead.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

public class ListNode {
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int) {
        self.val = val
        self.next =  nil
    }
}

func buildListFrom(arr:[Int]) -> ListNode {
    var h:ListNode? = nil
    var node:ListNode?
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


func printListFromTailToHead(root:ListNode?) {
    guard var root = root else {
        return
    }
    
    var stack:Array<ListNode> = [root]
    while root.next != nil {
        stack.append(root.next!)
        root = root.next!
    }
    //倒序pop出去
    for node in stack.reversed() {
        print(node.val)
    }
}
