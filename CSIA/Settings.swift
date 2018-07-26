//
//  Settings.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 27/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class Settings{
    
  
    var colorScheme: [Colors] = []
    var font: String

  //Will probs not include this
  //  var notifications: Bool

    init(colorScheme:[Colors], font:String) {
        self.colorScheme = colorScheme
        self.font = font
    }
    
    func getColorScheme () -> [Colors] {
        return self.colorScheme
    }
    
    
  
    
    func getFont () -> String {
        return self.font
    }
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
