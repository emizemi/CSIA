//
//  AddReflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 25/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class AddReflection: UIViewController {
    
    @IBOutlet weak var textInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[1].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[1].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[1].blueComponent)/225.0,alpha:1.00)
        
        self.textInput.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)
        // Do any additional setup after loading the view.
        
        self.textInput.font = UIFont(name: globalVariables.currentSettings.font, size: 15.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addReflection(_ sender: UIButton) {
        //print("This is where the adding a goal logic will be")
        //The key will be a number, so whenever titleInput is added, it incremenets by 1\
        globalVariables.reflectionKey = globalVariables.reflectionKey + 1

        
        //This date formater only gets the date, not time
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = DateFormatter.Style.long
        dateformatter.timeStyle = DateFormatter.Style.none
        let currentDate = dateformatter.string(from: Date())
        
        let newReflection = Reflection(text: textInput.text, dateAdded: currentDate)

        
        UserDefaults.standard.set(newReflection.text, forKey: String(globalVariables.reflectionKey) + "reflectionText")
        UserDefaults.standard.set(newReflection.dateAdded, forKey: String(globalVariables.reflectionKey) + "reflectionDateAdded")
        UserDefaults.standard.set(false, forKey: String(globalVariables.reflectionKey) + "reflectionIsGuided")

        
        
        textInput.text = ""
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
