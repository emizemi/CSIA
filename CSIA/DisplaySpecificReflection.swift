//
//  DisplaySpecificReflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 25/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplaySpecificReflection: UIViewController {

    @IBOutlet weak var dateAddedLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstQuestionLabel: UILabel!
    
    @IBOutlet weak var secondQuestionLabel: UILabel!
    @IBOutlet weak var thirdQuestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textLabel.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)
        self.dateAddedLabel.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)
        self.typeLabel.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)



        self.view.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)
        
        self.dateAddedLabel.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        
                self.typeLabel.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        
        self.textLabel.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        
        textLabel.lineBreakMode = .byWordWrapping
        textLabel.numberOfLines = 0
        //textLabel.sizeToFit()
        
        // Do any additional setup after loading the view.
        
        //IF STATEMENT
        if globalVariables.isGuidedReflection {
            typeLabel.text = "Guided Reflection"
        dateAddedLabel.text = globalVariables.selectedReflectionDateAdded
        textLabel.text = globalVariables.selectedReflectionText
            firstQuestionLabel.text = globalVariables.selectedReflectionQuestions[0]
            secondQuestionLabel.text = globalVariables.selectedReflectionQuestions[1]
            thirdQuestionLabel.text = globalVariables.selectedReflectionQuestions[2]
        } else {
            typeLabel.text = "Free Reflection"
            dateAddedLabel.text = globalVariables.selectedReflectionDateAdded
            textLabel.text = globalVariables.selectedReflectionText
            questionLabel.text = ""
            firstQuestionLabel.text = ""
            secondQuestionLabel.text = ""
            thirdQuestionLabel.text = ""
        }

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
