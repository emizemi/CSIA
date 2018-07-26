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
        
        print("For goal number " + String(globalVariables.selectedGoal.index) + " these are the checkins:")
        var count = -1
        var keepSearching = true
        repeat{
            count = count + 1
            if UserDefaults.standard.object(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index)) == nil {
                keepSearching = false
            } else {
            print(UserDefaults.standard.object(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index)))
            }
        }while keepSearching == true
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopUp(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! CheckInPopUp
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
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
