//
//  DisplaySpecificGoal.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 24/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplaySpecificGoal: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateAddedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = globalVariables.selectedGoal.title
        descriptionLabel.text = globalVariables.selectedGoal.description
        dateAddedLabel.text = globalVariables.selectedGoal.dateAdded
        
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
