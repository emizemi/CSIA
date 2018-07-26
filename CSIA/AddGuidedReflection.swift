//
//  AddGuidedReflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 27/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class AddGuidedReflection: UIViewController {

    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var textInput: UITextView!
    @IBOutlet weak var firstQuestionLabel: UILabel!
    @IBOutlet weak var secondQuestionLabel: UILabel!
    @IBOutlet weak var thirdQuestionLabel: UILabel!
    
    var possibleQuestionsArray = ["How will implementing these goals improve your life?","How will implementing these goals make you a better version of yourself?","Which goals in particular have you been struggling with, and why?", "Which goals in particular have you been successful with, and why?", "Will you still have these same goals years from now?", "Have any of your goals been an obstruction to your daily routine?", "Have any of your goals successfully become a part of your regular schedule?", "Do you plan on removing any of your current goals?", "Do you plan on adding any additional goals at this point in time?", "Has achieving your goals been more challenging than expected?", "Are your goals still meaningful to you", "Is achieving your goals a big priority in your life", "Do you currently have more or less goals then you would like?", "Are some of your goals more meaningful than others?", "How much does it bother you when you have not made much progress with a goal?", "Are some of your goals too unrealistic?", "What aspects of your life have improved by working on your goals?"  ]
    //16 so far
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var selectedQuestionsArray = [String]()
        
        var firstRandomNumber = arc4random_uniform(UInt32(possibleQuestionsArray.count))
        
        var secondRandomNumber = arc4random_uniform(UInt32(possibleQuestionsArray.count))
        if secondRandomNumber == firstRandomNumber {
            repeat{
                secondRandomNumber = arc4random_uniform(UInt32(possibleQuestionsArray.count))
            }while secondRandomNumber == firstRandomNumber
        }
        
        var thirdRandomNumber = arc4random_uniform(UInt32(possibleQuestionsArray.count))
        if thirdRandomNumber == firstRandomNumber || thirdRandomNumber == secondRandomNumber {
            repeat{
                thirdRandomNumber = arc4random_uniform(UInt32(possibleQuestionsArray.count))
            }while thirdRandomNumber == firstRandomNumber || thirdRandomNumber == secondRandomNumber
        }
        
        selectedQuestionsArray.append(possibleQuestionsArray[Int(firstRandomNumber)])
        selectedQuestionsArray.append(possibleQuestionsArray[Int(secondRandomNumber)])
        selectedQuestionsArray.append(possibleQuestionsArray[Int(thirdRandomNumber)])
        
        firstQuestionLabel.text = selectedQuestionsArray[0]
        secondQuestionLabel.text = selectedQuestionsArray[1]
        thirdQuestionLabel.text = selectedQuestionsArray[2]
        
        globalVariables.selectedReflectionQuestions = selectedQuestionsArray
        
        // Do any additional setup after loading the view.
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
        


        
        let newGuidedReflection = GuidedReflection(text: textInput.text, dateAdded: currentDate, questions: globalVariables.selectedReflectionQuestions)
        
        UserDefaults.standard.set(newGuidedReflection.text, forKey: String(globalVariables.reflectionKey) + "reflectionText")
        UserDefaults.standard.set(newGuidedReflection.dateAdded, forKey: String(globalVariables.reflectionKey) + "reflectionDateAdded")
                UserDefaults.standard.set(newGuidedReflection.questions, forKey: String(globalVariables.reflectionKey) + "reflectionQuestions")
        UserDefaults.standard.set(true, forKey: String(globalVariables.reflectionKey) + "reflectionIsGuided")
        
        
        textInput.text = ""
 
    }

}
