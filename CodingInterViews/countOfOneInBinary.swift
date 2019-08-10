//
//  countOfOneInBinary.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*10。二进制中的一的数据*/

func countOf1(num:Int) -> Int {
    var n = num
    var count = 0
    while n != 0 {
        if n & 1 == 1 {
            count += 1
        }
        n = n >> 1
    }
    return count
}
