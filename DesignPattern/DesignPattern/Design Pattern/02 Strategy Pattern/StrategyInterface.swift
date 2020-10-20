//
//  Created by Joker on 2020/10/14.
//  Copyright © 2020 Joker. All rights reserved.
//

import Foundation

// 创建一个统一接口
public protocol CashStrategy {
    func acceptCash(money: Double) -> Double
}
