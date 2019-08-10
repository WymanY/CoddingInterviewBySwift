//
//  Fibonacci.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*第九题斐波那契数列*/
/*
 f(0) = 0
 f(1) = 1
 f(2) =
 0,1,2,3,5,8...
 f(n) = f(n-1) + f(n-2)
 */

//1,尾递归容易溢出
func fibonacci1(_ n:Int) -> Int {
    guard n < 2 else{
        return n
    }
    return fibonacci1(n-1) + fibonacci1(n-2)
}

//动态递归法算出fn[i]
func fibonacci2(n:Int) -> Int {
    guard n < 2 else{
        return 2
    }
    var fn = [Int](repeating: 0, count: n+1)
    fn[0] = 0
    fn[1] = 1
    for i in 2...n {
        fn[i] = fn[i-1] + fn[i-2]
    }
    return fn[n]
}
