//
//  DisplayReflectionType.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 12/8/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplayReflectionType: UIViewController {
    @IBOutlet weak var guidedButton: UIButton!
    @IBOutlet weak var freeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               self.view.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[2].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[2].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[2].blueComponent)/225.0,alpha:1.00)
        
        self.guidedButton.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)
        
                self.freeButton.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)
        
            self.freeButton.setTitleColor(UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00), for: .normal)
        
            self.guidedButton.setTitleColor(UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00), for: .normal)

        self.freeButton.titleLabel?.font = UIFont(name: globalVariables.currentSettings.font, size: 45.0)
        
        self.guidedButton.titleLabel?.font = UIFont(name: globalVariables.currentSettings.font, size: 45.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
