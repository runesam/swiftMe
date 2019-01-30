//
//  Question.swift
//  quizzler
//
//  Created by Semih Ewdala on 30.01.19.
//  Copyright © 2019 bta3 computer. All rights reserved.
//

import Foundation

class Question {
    let questionText: String;
    let answer: Bool;
    
    init(text: String, correctAnswer: Bool) {
        questionText = text;
        answer = correctAnswer;
    }
}
