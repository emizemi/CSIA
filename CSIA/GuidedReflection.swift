//
//  GuidedReflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 25/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation

class GuidedReflection: Reflection {
    var questions: [String] = []
    
    init(text:String, dateAdded:String, questions:[String]) {
        super.init(text: text, dateAdded: dateAdded)
        self.questions = questions
    }
    
    func getQuestions () -> [String]  {
        return self.questions
    }
    
    
}
