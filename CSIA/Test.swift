//
//  Test.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 24/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class Test: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var goalCount = 0
        repeat{
            UserDefaults.standard.removeObject(forKey: String(goalCount) + "goalTitle")
            UserDefaults.standard.removeObject(forKey: String(goalCount) + "goalDescription")
            UserDefaults.standard.removeObject(forKey: String(goalCount) + "goalDateAdded")
            goalCount = goalCount + 1
        } while UserDefaults.standard.object(forKey: String(goalCount) + "goalTitle") != nil
        
        var reflectionCount = 0
        repeat{
            UserDefaults.standard.removeObject(forKey: String(reflectionCount) + "reflectionDateAdded")
            UserDefaults.standard.removeObject(forKey: String(reflectionCount) + "reflectionText")
            reflectionCount = reflectionCount + 1
        } while UserDefaults.standard.object(forKey: String(reflectionCount) + "reflectionText") != nil

        //Instanty delete something
//        UserDefaults.standard.removeObject(forKey: String(2) + "title")
//        UserDefaults.standard.removeObject(forKey: String(2) + "description")

        print("all values")
        print(UserDefaults.standard.dictionaryRepresentation())
        print("good to go")
//        // Do any additional setup after loading the view.
//        let temp = Date()
//        let dateformatter = DateFormatter()
//
//        dateformatter.dateStyle = DateFormatter.Style.short
//
//        dateformatter.timeStyle = DateFormatter.Style.short
//        print("This is the date...")
//        let now = dateformatter.string(from: temp)
//        print(now)
//        print("---END---")
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
