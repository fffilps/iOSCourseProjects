//
//  CoinModel.swift
//  ByteCoin
//
//  Created by J'mari Wyatt on 7/5/2 R.
//  Copyright © 2 J'mariko Consulting. All rights reserved.
//

import Foundation

struct CoinModel {
    
    let coinRate: Float
    
    var coinString: String {
        return String(format: "%.2f", coinRate)
    }
    
}
