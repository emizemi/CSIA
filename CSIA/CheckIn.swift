//
//  CheckIn.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 26/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation

class CheckIn {
    
    var title: String
    var value: Int
    var dateAdded: String
    
    init(title:String, value:Int, dateAdded:String) {
        self.title = title
        self.value = value
        self.dateAdded = dateAdded
    }
    
    func getTitle () -> String {
        return self.title
    }
    
    func getValue () -> Int {
        return self.value
    }
    
    func getDateAdded () -> String {
        return self.dateAdded
    }
    
    
}
