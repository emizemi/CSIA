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
    var checkin: [Int] = []
    
    init(title:String, description:String, dateAdded:String, checkin:[Int]) {
        self.title = title
        self.description = description
        self.dateAdded = dateAdded
        self.checkin = checkin
    }
    
    func getTitle () -> String {
        return self.title
    }
    
    func getDescription () -> String {
        return self.description
    }
    
    func getText () -> String {
        return self.dateAdded
    }
    
    //Still not exactly sure if this returns an array
    func getText () -> [Int] {
        return self.checkin
    }

}

