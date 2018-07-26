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
    static var selectedGoal = Goal(title: "", description: "", dateAdded: "", index: 0)
    static var selectedGoalTitle = ""
    static var selectedGoalDescription = ""
    static var selectedGoalDateAdded = ""
    static var selectedGoalIndex = 0
    
    static var reflectionKey = -1
    static var selectedReflection = Reflection(text: "", dateAdded: "")
    static var selectedGuidedReflection = GuidedReflection(text: "", dateAdded: "", questions: [])
    static var selectedReflectionText = ""
    static var selectedReflectionDateAdded = ""
    static var selectedReflectionQuestions = [""]
    static var isGuidedReflection = true
    
    static var checkInKey = -1
    static var selectedCheckIn = CheckIn(title: "", value: 0, dateAdded: "")
    static var selectedCheckInValue = 0
    static var selectedCheckInIndex = 0
    
    static var currentSettings = Settings(colorScheme: [], fontSize: 0, font: "")

}
