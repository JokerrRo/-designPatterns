//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DesignPattern.strategyPattern()
                
    }
}


class DesignPattern {
    
    // 1. simple factory pattern
    static func simpleFactoryPattern() {
        let oper = OperationFactory.createOperate(numberA: 10, numberB: 20, operate: .add)
        print(oper.getResult())
    }
    
    // 2. strategy pattern
    static func strategyPattern() {
        let context = CashContext(cash: .normalMoney)
        print(context.getResult(money: 100))
        
        let context2 = CashContext(cash: .rebateMoney)
        print(context2.getResult(money: 100))
    }
    
    
}

