//
//  02-Singleton.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 实现singleton的模式
 */

class SingleTon {
    //由于swift 默认全局变量的s初始化使用dispatch_oncec操作保证了其原子性
    private static let shareInstance:SingleTon = {//使用闭包的方式可以增添加一些额外配置
        let shared = SingleTon(str: "someStr")
        //这里还可以做一些初始化操作
        return shared
    }()
    
    let str:String
    private init(str:String) {
        //构造初始化操作
        self.str = str
    }
    class func shared() -> SingleTon {//对外提供统一入口
       return shareInstance
    }
}
