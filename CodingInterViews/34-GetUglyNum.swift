//
//  34-GetUglyNum.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

func getUglyNumber(index:Int) -> Int {
    guard index > 0 else{
        return 0
    }
    var uglyNumbers:[Int] = [Int](repeating: 0, count: index)
    uglyNumbers[0] = 1
    var nextUglyIndex = 1
    var (p2,p3,p5) = (0,0,0)
    while nextUglyIndex < index  {
        let minV = min(uglyNumbers[p2] * 2, uglyNumbers[p3] * 3, uglyNumbers[p5] * 5)
        uglyNumbers[nextUglyIndex] = minV
        while uglyNumbers[p2] * 2 <= uglyNumbers[nextUglyIndex] {
            p2 += 1
        }
        while uglyNumbers[p3] * 3 <= uglyNumbers[nextUglyIndex] {
            p3 += 1
        }
        while uglyNumbers[p5] * 5 <= uglyNumbers[nextUglyIndex] {
            p5 += 1
        }
        nextUglyIndex += 1
    }
    
    return uglyNumbers[nextUglyIndex - 1]
    
    
}
