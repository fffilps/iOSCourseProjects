//
//  Item.swift
//  ToDoLists-iOS13
//
//  Created by Spliff Watson on 8/25/2 R.
//  Copyright © 2 Reiwa J'mari Wyatt. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
