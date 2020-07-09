//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Spliff Watson on 7/5/2 R.
//  Copyright © 2 Reiwa The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    
    let coinRate: Float
    
    var coinString: String {
        return String(format: "%.2f", coinRate)
    }
    
}
