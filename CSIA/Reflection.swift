//
//  Reflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 24/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation

class Reflection {
    var text: String
    var dateAdded: String

    init (text: String, dateAdded: String) {
        self.text = text
        self.dateAdded = dateAdded
    }
    
    func getText () -> String {
        return self.text
    }
    
    func getDate () -> String {
        return self.dateAdded
    }
}


