//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
}


class DesignPattern {
    
    // 1. simple factory pattern
    static func simpleFactoryPattern() {
        let oper = OperationFactory.createOperate(numberA: 10, numberB: 20, operate: .add)
        print(oper.getResult())
    }
    
    
}

