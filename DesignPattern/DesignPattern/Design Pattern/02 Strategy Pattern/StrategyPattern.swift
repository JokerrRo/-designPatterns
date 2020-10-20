//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

//策略模式:
// 定义了算法家族,分别封装起来,让他们之间可以互相替换,此模式让算法的替换,不会影响到使用算法的客户

//意图：定义一系列的算法,把它们一个个封装起来, 并且使它们可相互替换。
//主要解决：在有多种算法相似的情况下，使用 if...else 所带来的复杂和难以维护。
//何时使用：一个系统有许多许多类，而区分它们的只是他们直接的行为。
//如何解决：将这些算法封装成一个一个的类，任意地替换。
//关键代码：实现同一个接口。
//应用实例：
//  1、诸葛亮的锦囊妙计，每一个锦囊就是一个策略。
//  2、旅行的出游方式，选择骑自行车、坐汽车，每一种旅行方式都是一个策略。

//优点:
//1、算法可以自由切换。
//2、避免使用多重条件判断。
//3、扩展性良好。

//缺点:
//1、策略类会增多。
//2、所有策略类都需要对外暴露。

import Foundation

enum CashstrategyEnum {
    case normalMoney
    case rebateMoney
    case returnMoney
}

// 创建上下文
class CashContext {
    var strategy: CashStrategy
    
    init(cash: CashstrategyEnum) {
        switch cash {
        case .normalMoney:
            strategy = CashNormal()
        case .rebateMoney:
            strategy = CashRebate(moneyRebate: 0.8)
        case .returnMoney:
            strategy = CashReturn()
        }
    }
    
    //上下文接口
    func getResult(money: Double) -> Double {
        strategy.acceptCash(money: money)
    }
}





