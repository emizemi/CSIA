//
//  Test.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 24/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class Test: UIViewController {
    @IBOutlet weak var hello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        var goalCount = 0
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(goalCount) + "goalTitle")
//            UserDefaults.standard.removeObject(forKey: String(goalCount) + "goalDescription")
//            UserDefaults.standard.removeObject(forKey: String(goalCount) + "goalDateAdded")
//            goalCount = goalCount + 1
//        } while UserDefaults.standard.object(forKey: String(goalCount) + "goalTitle") != nil
//
//        var reflectionCount = 0
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(reflectionCount) + "reflectionDateAdded")
//            UserDefaults.standard.removeObject(forKey: String(reflectionCount) + "reflectionText")
//            reflectionCount = reflectionCount + 1
//        } while UserDefaults.standard.object(forKey: String(reflectionCount) + "reflectionText") != nil
//
//        var checkInCount = 0
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInTitle" + String(0))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInValue" + String(0))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInDateAdded" + String(0))
//            checkInCount = checkInCount + 1
//        } while UserDefaults.standard.object(forKey: String(checkInCount) + "checkInDateAdded" + String(0)) != nil
//
//        checkInCount = 7
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInTitle" + String(1))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInValue" + String(1))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInDateAdded" + String(1))
//            
//            //REMOVE SOON
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInDescription" + String(1))
//
//            checkInCount = checkInCount + 1
//        } while UserDefaults.standard.object(forKey: String(checkInCount) + "checkInDateAdded" + String(1)) != nil
//
//         checkInCount = 0
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInTitle" + String(2))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInValue" + String(2))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInDateAdded" + String(2))
//            checkInCount = checkInCount + 1
//        } while UserDefaults.standard.object(forKey: String(checkInCount) + "checkInDateAdded" + String(2)) != nil
//
//         checkInCount = 0
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInTitle" + String(3))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInValue" + String(3))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInDateAdded" + String(3))
//            checkInCount = checkInCount + 1
//        } while UserDefaults.standard.object(forKey: String(checkInCount) + "checkInDateAdded" + String(3)) != nil
//
//         checkInCount = 0
//        repeat{
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInTitle" + String(4))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInValue" + String(4))
//            UserDefaults.standard.removeObject(forKey: String(checkInCount) + "checkInDateAdded" + String(4))
//            checkInCount = checkInCount + 1
//        } while UserDefaults.standard.object(forKey: String(checkInCount) + "checkInDateAdded" + String(4)) != nil
//
////        Instanty delete something
////        UserDefaults.standard.removeObject(forKey: String(2) + "title")
////        UserDefaults.standard.removeObject(forKey: String(2) + "description")

        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
        
        print("all values")
        print(UserDefaults.standard.dictionaryRepresentation())
        print("good to go")
        
        hello.font = UIFont(name: "AmericanTypewriter", size: 30)
        
    
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
