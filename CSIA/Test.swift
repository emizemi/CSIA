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


        //Printing the specific data type (e.g. Int) in UserDefaults
            print(UserDefaults.standard.integer(forKey: "numberz"))
        
        //Removing an object with that specific key
            UserDefaults.standard.removeObject(forKey: "numberz")

        
        //If you ever want to delete everything in the UserDefaults, just set "test"
        //as the initial view controller and run this code.
        var count = 0
        repeat{
            count = count + 1
            UserDefaults.standard.removeObject(forKey: String(count) + "title")
            UserDefaults.standard.removeObject(forKey: String(count) + "description")
        } while UserDefaults.standard.object(forKey: String(count) + "title") != nil
        
        
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
