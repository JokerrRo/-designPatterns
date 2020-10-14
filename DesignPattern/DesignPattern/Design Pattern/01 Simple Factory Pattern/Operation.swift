//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

import Foundation

enum Operate {
    case add
    case sub
    case mult
    case div
}

class Operation {
    
    var numberA: Double
    var numberB: Double
    
    init(numberA: Double, numberB: Double) {
        self.numberA = numberA
        self.numberB = numberB
    }
    
    func getResult() -> Double {
        return 0
    }
}

class OperationAdd: Operation {
    
    override func getResult() -> Double {
        return numberA + numberB
    }
}

class OperationSub: Operation {
    override func getResult() -> Double {
        return numberA - numberB
    }
}

class OperationMult: Operation {
    override func getResult() -> Double {
        return numberA * numberB
    }
}

class OperationDiv: Operation {
    override func getResult() -> Double {
        return numberA / numberB
    }
}
