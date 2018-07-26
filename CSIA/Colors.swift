//
//  Colors.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 27/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import Foundation

class Colors {
    
    var redComponent: Double
    var greenComponent: Double
    var blueComponent: Double
    

    
    init(redComponent:Double, greenComponent:Double, blueComponent:Double) {
        self.redComponent = redComponent
        self.greenComponent = greenComponent
        self.blueComponent = blueComponent
    }
    
    func getRedComponent () -> Double {
        return self.redComponent
    }
    
    func getGreenComponent () -> Double {
        return self.greenComponent
    }
    
    func getBlueComponent () -> Double {
        return self.blueComponent
    }
    
}
