//
//  Power.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*数值的整数次方*/

func power(_ base:Double, exponent:Int) -> Double {
    if exponent == 0 {
        return Double(1)
    }
    
    if exponent < 0 && (base - 0.0) < .ulpOfOne {
        print("指数<0的时候，底数不应该为0")
        return 0.0
    }
    var res:Double = 1.0
    if exponent > 0  {
        res = powerNormal(base, exponent: exponent)
    } else {
        res = 1 / powerNormal(base, exponent: exponent)
    }
    return res
}

private func powerNormal(_ base:Double, exponent:Int) -> Double {
    var res:Double = 1.0
    let n = abs(exponent)
    for _ in 0..<n {
        res = base * res
    }
    return res
}

//通过y位运算的方式计算，譬如 exponent = 8 ,二进制位 100，至于要 (2 ^ 3)* base就行
private func powerNormal2(_ base:Double, exponent:Int) -> Double {
    var res = 1.0

    var n = abs(exponent)
    var temp = base
    while  n != 0 {
        if (n & 1) == 1 {
            res *= temp
        }
        temp *=  temp
        n >>= 1
    }
    return res
    
}



