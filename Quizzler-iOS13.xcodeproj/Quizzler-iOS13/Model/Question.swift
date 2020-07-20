//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jmari Wyatt on 5/21/20.
//  Copyright © 2020 J'mariko Consulting. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
