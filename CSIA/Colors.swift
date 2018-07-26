//
//  Colors.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 27/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation

class Colors {
    
    var redComponent: Int
    var greenComponent: Int
    var blueComponent: Int
    

    
    init(redComponent:Int, greenComponent:Int, blueComponent:Int) {
        self.redComponent = redComponent
        self.greenComponent = greenComponent
        self.blueComponent = blueComponent
    }
    
    func getRedComponent () -> Int {
        return self.redComponent
    }
    
    func getGreenComponent () -> Int {
        return self.greenComponent
    }
    
    func getBlueComponent () -> Int {
        return self.blueComponent
    }
    
}
