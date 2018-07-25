//
//  GlobalVariables.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 23/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation

struct globalVariables {
    static var goalKey = -1
    static var selectedGoal = Goal(title: "", description: "", dateAdded: "", checkin: [])
    static var selectedGoalTitle = ""
    static var selectedGoalDescription = ""
    static var selectedGoalDateAdded = ""
    
    static var reflectionKey = -1
    static var selectedReflection = Reflection(text: "", dateAdded: "")
    static var selectedGuidedReflection = GuidedReflection(text: "", dateAdded: "", questions: [])
    static var selectedReflectionText = ""
    static var selectedReflectionDateAdded = ""
    static var selectedReflectionQuestions = [""]
}
