//
//  Goal.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 23/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation
class Goal {
    
    var title: String
    var description: String
    var dateAdded: String
    var index: Int
    
    init(title:String, description:String, dateAdded:String, index:Int) {
        self.title = title
        self.description = description
        self.dateAdded = dateAdded
        self.index = index
    }
    
    func getTitle () -> String {
        return self.title
    }
    
    func getDescription () -> String {
        return self.description
    }
    
    func getDateAdded () -> String {
        return self.dateAdded
    }
    
    //Still not exactly sure if this returns an array
    func getIndex () -> Int {
        return self.index
    }

}

