//
//  UseStackImpQueue.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

public class Queue {
    var stackIn:[Int] = [Int]()
    var stackOut:[Int] = [Int]()
    
    func push(node:Int) {
        stackIn.insert(node, at: 0)
    }
    
    var isEmpty:Bool {
        get {
            return stackIn.isEmpty && stackOut.isEmpty
        }
    }
    
    func pop() -> Int {
        var node = -1
        guard !self.isEmpty else {
            print("queue is empty")
            return -1
        }
        
        if stackOut.isEmpty {
            while !stackIn.isEmpty {
                node = stackIn.removeFirst()
                stackOut.insert(node, at: 0)
            }
        }
        
        node =  stackOut.removeFirst()
        print("pop 元素 node = \(node)")
        return node
    }
}
