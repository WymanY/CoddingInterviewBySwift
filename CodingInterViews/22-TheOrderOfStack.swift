//
//  22-TheOrderOfStack.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
题目描述

输入两个整数序列，第一个序列表示栈的压入顺序，请判断第二个序列是否为该栈的弹出顺序。

假设压入栈的所有数字均不相等。

例如序列1,2,3,4,5是某栈的压入顺序，

序列4，5,3,2,1是该压栈序列对应的一个弹出序列，

但4,3,5,1,2就不可能是该压栈序列的弹出序列。
 
 
 #辅助栈模拟入栈出栈过程
 思路：
 
 开辟一个辅助栈，模拟入栈出战过程(假设pa为入栈序列，pb为出战序列)
 
 pa中的元素依次压入辅助栈
 
 新压入的元素与弹出序列的栈底相同，辅助栈弹出，同时pb向上移动
 
 不相同了pa中的元素继续入辅助
 
 如果下一个弹出的数字刚好是栈顶数字，则直接弹出。
 
 若下一个弹出的数字不在栈顶，则把压栈序列中还没有入栈的数字压入辅助栈，直到把下一个需要弹出的数字压入栈顶为止。
 
 若所有的数字都压入栈了仍没有找到下一个弹出的数字，则表明该序列不可能滴一个弹出序列。
 
 */

func IsPopOrder(pushS:[Int],popS:[Int]) -> Bool {
    guard !pushS.isEmpty && !popS.isEmpty else {
        return false
    }
    
    var s = [Int]()//辅助栈
    s.append(pushS[0])//第一个元素入栈
    var (push,pop) = (0,0)
    while push < pushS.count && pop < popS.count {
        if !s.isEmpty && popS[pop] == s.first {//如果栈不空，且栈顶是POPx序列
            _ = s.removeFirst()
            pop += 1
        } else {
            s.insert(pushS[push], at: 0)
            push += 1
        }
    }
    return s.isEmpty
}
