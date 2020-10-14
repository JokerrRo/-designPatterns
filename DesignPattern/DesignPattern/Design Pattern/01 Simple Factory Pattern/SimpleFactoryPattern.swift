//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

// here is a caculator demo for simple factory
import Foundation

// OperationFactory
class OperationFactory {
    static func createOperate(numberA a: Double, numberB b: Double, operate: Operate) -> Operation {
        
        var oper: Operation
        
        switch operate {
        case .add:
            oper = OperationAdd(numberA: a, numberB: b)
        case .sub:
            oper = OperationSub(numberA: a, numberB: b)
        case .mult:
            oper = OperationMult(numberA: a, numberB: b)
        case .div:
            oper = OperationDiv(numberA: a, numberB: b)
        }
        
        return oper
    }
}
