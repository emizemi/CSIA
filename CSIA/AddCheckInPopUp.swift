//
//  AddCheckInPopUp.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 26/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class AddCheckInPopUp: UIViewController {
    @IBOutlet weak var progressLabel: UILabel!
    
    var progressArray = ["Terrible","Very Bad", "Bad", "All Right", "Good", "Very Good", "Excellent"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.showAnimate()


        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        var count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInTitle"  + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        print("---Start---")
        print("This is the globlVariables.checkInKey")
        print(globalVariables.checkInKey)
        print("---end---")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.removeAnimate()
        //self.view.removeFromSuperview()
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
    
    @IBAction func slider(_ sender: UISlider) {
        progressLabel.text = progressArray[Int(sender.value)]
        globalVariables.selectedCheckInValue = Int(sender.value)
    }
    
    @IBAction func saveCheckIn(_ sender: Any) {
        globalVariables.checkInKey = globalVariables.checkInKey + 1
        
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = DateFormatter.Style.long
        dateformatter.timeStyle = DateFormatter.Style.none
        let currentDate = dateformatter.string(from: Date())
        
        let newCheckIn = CheckIn(title: progressArray[globalVariables.selectedCheckInValue], value: globalVariables.selectedCheckInValue, dateAdded: currentDate )

        UserDefaults.standard.set(newCheckIn.title, forKey: String(globalVariables.checkInKey) + "checkInTitle" + String(globalVariables.selectedGoal.index))
        UserDefaults.standard.set(newCheckIn.value, forKey: String(globalVariables.checkInKey) + "checkInValue" + String(globalVariables.selectedGoal.index))
        UserDefaults.standard.set(newCheckIn.dateAdded, forKey: String(globalVariables.checkInKey) + "checkInDateAdded" + String(globalVariables.selectedGoal.index))
        
//        DisplaySpecificGoal().reloadCollectionView()
        self.view.removeFromSuperview()

//        Adds checkin to checkInTitle1
        //Or checkInValue3
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
