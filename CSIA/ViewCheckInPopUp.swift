//
//  ViewCheckInPopUp.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 26/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class ViewCheckInPopUp: UIViewController {

    @IBOutlet weak var dateAddedLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.showAnimate()
        
        dateAddedLabel.text = globalVariables.selectedCheckIn.dateAdded
        progressLabel.text = globalVariables.selectedCheckIn.title
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.removeAnimate()
     //   self.view.removeFromSuperview()

    }
    
    //ANIMATIONS
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    //Don't think this works lol
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    
    @IBAction func deleteCheckIn(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: String(globalVariables.selectedCheckInIndex) + "checkInTitle" + String(globalVariables.selectedGoal.index))
        UserDefaults.standard.removeObject(forKey: String(globalVariables.selectedCheckInIndex) + "checkInDateAdded" + String(globalVariables.selectedGoal.index))
        UserDefaults.standard.removeObject(forKey: String(globalVariables.selectedCheckInIndex) + "checkInValue" + String(globalVariables.selectedGoal.index))
        
        if globalVariables.checkInKey != -1 {
            globalVariables.checkInKey = globalVariables.checkInKey - 1
        }
        
        print("---Start---")
        print("This is the globlVariables.checkInKey")
        print(globalVariables.checkInKey)
        print("---end---")
        
        var currentIndex = globalVariables.selectedCheckInIndex
        repeat{
    UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentIndex + 1) + "checkInTitle" + String(globalVariables.selectedGoal.index)), forKey: String(currentIndex) + "checkInTitle" + String(globalVariables.selectedGoal.index))
        UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentIndex + 1) + "checkInValue" + String(globalVariables.selectedGoal.index)), forKey: String(currentIndex) + "checkInValue" + String(globalVariables.selectedGoal.index))
                UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentIndex + 1) + "checkInDateAdded" + String(globalVariables.selectedGoal.index)), forKey: String(currentIndex) + "checkInDateAdded" + String(globalVariables.selectedGoal.index))
            
            currentIndex = currentIndex + 1
        } while UserDefaults.standard.object(forKey: String(currentIndex) + "checkInTitle" + String(globalVariables.selectedGoal.index)) != nil
        
        
        self.removeAnimate()
        
        //tableView.reloadData()
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
