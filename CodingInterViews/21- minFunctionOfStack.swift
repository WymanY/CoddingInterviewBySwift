//
//  21- minFunctionOfStack.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 题目描述
 
 定义栈的数据结构，请在该类型中实现一个能够得到栈最小元素的min函数。
 
 #分析
 思路很简单，我们维持两个栈，
 
 数据栈data，存储栈的数据用于常规的栈操作
 
 最小栈min，保存每次push和pop时候的最小值，
 
 在push-data栈的时候，将当前最小数据压入，
 
 在pop-data栈的时候，将min栈栈顶的最小数据弹出
 
 这样保证min栈中存储着当前现场的最小值，并随着数据栈的更新而更新
 
 */


class MinStack {
    var dataStack = [Int]()//数据栈
    var minStack = [Int]()//最小栈
    func push(element:Int) {
        //先加入数据栈中
        dataStack.append(element)
        
        if minStack.isEmpty || element < minStack.first! {
            minStack.append(element)
        } else {
            minStack.append(minStack.first!)
        }
    }
    func pop() {
        guard !dataStack.isEmpty && !minStack.isEmpty else {
            print("stack is empty should not  pop")
            return
        }
        dataStack.removeFirst()
        minStack.removeFirst()
    }
    
    var top:Int? {
        get {
            guard !dataStack.isEmpty && !minStack.isEmpty else {
                print("stack is empty should not  pop")
                return nil
            }
            return dataStack.first
        }
    }
    func min() -> Int {
        if dataStack.isEmpty {
            return 0
        }
        return minStack.first!
    }
}

