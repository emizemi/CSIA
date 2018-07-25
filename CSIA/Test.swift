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


        
        var count = 0
        repeat{

            UserDefaults.standard.removeObject(forKey: String(count) + "title")
            UserDefaults.standard.removeObject(forKey: String(count) + "description")
            UserDefaults.standard.removeObject(forKey: String(count) + "goal")

            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "title") != nil
        
        //Instanty delete something
//        UserDefaults.standard.removeObject(forKey: String(2) + "title")
//        UserDefaults.standard.removeObject(forKey: String(2) + "description")
        
        print("all values")
        print(UserDefaults.standard.dictionaryRepresentation())
        print("good to go")
        // Do any additional setup after loading the view.
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
