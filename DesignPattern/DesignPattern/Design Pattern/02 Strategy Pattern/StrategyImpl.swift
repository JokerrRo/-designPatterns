//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

import Foundation

// 正常收费子类
class CashNormal: CashStrategy  {
    func acceptCash(money: Double) -> Double {
        print("正常收费子类")
        return money
    }
}

// 折扣收费子类
class CashRebate: CashStrategy {
    
    // 初始化折扣
    let moneyRebate: Double
    
    init(moneyRebate: Double) {
        self.moneyRebate = moneyRebate
    }
    
    func acceptCash(money: Double) -> Double {
        print("折扣收费子类")
        return money * moneyRebate
    }
}

// 返利收费子类
class CashReturn: CashStrategy {
    func acceptCash(money: Double) -> Double {
        print("返利收费子类")
        return money
    }
}
