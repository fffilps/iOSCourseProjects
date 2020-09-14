//
//  Category.swift
//  ToDoLists-iOS13
//
//  Created by Spliff Watson on 8/25/2 R.
//  Copyright © 2 Reiwa J'mari Wyatt. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
    let items = List<Item>()
    
}
