//
//  Question.swift
//  martion01
//
//  Created by lucie on 16/11/2018.
//  Copyright © 2018 lucie. All rights reserved.
//

import Foundation

class Question {
    var content : String
    var isYesUp : Bool
    
    init(_ content : String, _ isYesUp : Bool) {
        self.content = content
        self.isYesUp = isYesUp
    }
}
