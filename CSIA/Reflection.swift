//
//  Reflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 24/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation
//class Reflection{
//    var text: String
//    var date: Date
//
//    //This is the constructor
//    init (text: String) {
//        //"text" on the left is the instance variable
//        //"text" on the right isthe parameter
//        self.text = text
//    }
//
//    func getText () -> String {
//        return self.text
//    }
//
//    init(date:Date) { // initializer 1
//        self.date = date
//    }
//
//    func getDate () -> Date {
//        return self.date
//    }
//
//}

class Reflection {
    var text: String
    var date: Date

    // Constructor
    init (text: String, date: Date) {
        self.text = text
        self.date = date
    }
    
    func getText () -> String {
        return self.text
    }
    
    func getDate () -> Date {
        return self.date
    }
}

//var myReflection = Reflection(text: text.input, date = Date()
