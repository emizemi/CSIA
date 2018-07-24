//
//  AddGoal.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 23/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class AddGoal: UIViewController {

    @IBOutlet weak var titleInput: UITextView!
    @IBOutlet weak var descriptionInput: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addGoal(_ sender: UIButton) {
        //print("This is where the adding a goal logic will be")
        //The key will be a number, so whenever titleInput is added, it incremenets by 1\
        globalVariables.KeyNumber = globalVariables.KeyNumber + 1
        
        let currentTitleKey = String(globalVariables.KeyNumber) + "title"
        let currentDescriptionKey = String(globalVariables.KeyNumber) + "description"
        UserDefaults.standard.set(titleInput.text, forKey: currentTitleKey)
        UserDefaults.standard.set(descriptionInput.text, forKey: currentDescriptionKey)
        
        //Do I need the following two lines???
        titleInput.text = ""
        descriptionInput.text = ""
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
