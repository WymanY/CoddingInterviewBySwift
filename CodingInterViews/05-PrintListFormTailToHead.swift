//
//  PrintListFormTailToHead.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

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
