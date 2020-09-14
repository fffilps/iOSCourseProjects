//
//  PostData.swift
//  H4X0R News
//
//  Created by J'mari Wyatt on 8/10/2 R.
//  Copyright © 2 Reiwa J'mariko Consulting. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        //Identifiable is required
        //Post Structures for List (TableView)
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
