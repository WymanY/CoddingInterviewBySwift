//
//  26-ComplexListNodeClone.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/13.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

class ComplexListNode : Hashable{
    static func == (lhs: ComplexListNode, rhs: ComplexListNode) -> Bool {
            return lhs.hashValue == rhs.hashValue
        }
    // Synthesized by compiler
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.val)
        if let next = self.next {
            hasher.combine(next)
        }
        if let sibling = self.sibling {
            hasher.combine(sibling);
        }
        
    }
    
    // Default implementation from protocol extension
    var hashValue: Int {
        var hasher = Hasher()
        self.hash(into: &hasher)
        return hasher.finalize()
    }
    
    var val = 0
    var next:ComplexListNode?
    var sibling:ComplexListNode?
    
    init(val:Int) {
        self.val = val
    }
}


func clone(head:ComplexListNode?) -> ComplexListNode? {
    if head == nil {
        return nil
    }
    var node = head;
    
    //复制node
    while node != nil {
        let clone = ComplexListNode(val: node!.val)
        clone.next = node!.next
        node!.next = clone
        node = clone.next!
    }
    
    //复制 sibling
    while node != nil {
        let pclone = node!.next
        pclone!.sibling = node!.sibling?.next
        node = pclone!.next
    }
    
    //拆分链表
    node = head
    let newHead:ComplexListNode = node!.next!
    var newNode:ComplexListNode? = newHead
    node = newHead.next
    
    while node != nil {
        newNode?.next = node?.next
        newNode = newNode?.next
        node?.next = newNode?.next
        node = node?.next
    }
    return newHead

}
