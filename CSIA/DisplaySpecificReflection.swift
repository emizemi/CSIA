//
//  DisplaySpecificReflection.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 25/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplaySpecificReflection: UIViewController {

    @IBOutlet weak var dateAddedLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //IF STATEMENT
        dateAddedLabel.text = globalVariables.selectedReflection.dateAdded
        textLabel.text = globalVariables.selectedReflection.text


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
