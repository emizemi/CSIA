//
//  DisplaySettings.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 27/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplaySettings: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorSchemePickerView: UIPickerView!
    @IBOutlet weak var fontPickerView: UIPickerView!
    
     var lightBlueColorScheme: [Colors] = [Colors(redComponent:135, greenComponent:189, blueComponent:216), Colors(redComponent:183, greenComponent:215, blueComponent:232), Colors(redComponent:207, greenComponent:224, blueComponent:232), Colors(redComponent:218, greenComponent:235, blueComponent:232)]
    
    var brownVarietyColorScheme: [Colors] = [Colors(redComponent:185, greenComponent:147, blueComponent:108), Colors(redComponent:218, greenComponent:194, blueComponent:146), Colors(redComponent:230, greenComponent:226, blueComponent:211), Colors(redComponent:196, greenComponent:183, blueComponent:166)]
    
    var lightOrangeColorScheme: [Colors] = [Colors(redComponent:224, greenComponent:135, blueComponent:106), Colors(redComponent:244, greenComponent:166, blueComponent:136), Colors(redComponent:249, greenComponent:204, blueComponent:172), Colors(redComponent:251, greenComponent:239, blueComponent:204)]
  
    var pinkAndPurpleColorScheme: [Colors] = [Colors(redComponent:200, greenComponent:51, blueComponent:73), Colors(redComponent:224, greenComponent:99, blueComponent:119), Colors(redComponent:238, greenComponent:172, blueComponent:153), Colors(redComponent:249, greenComponent:213, blueComponent:229)]
    
    var darkModeColorScheme: [Colors] = [Colors(redComponent:0, greenComponent:0, blueComponent:0), Colors(redComponent:33, greenComponent:33, blueComponent:33), Colors(redComponent:48, greenComponent:48, blueComponent:48), Colors(redComponent:255, greenComponent:255, blueComponent:255)]
    
    var currentColorSchemeName: String = ""
    var currentColorScheme: [Colors] = []
    var currentFont: String = ""
    
    var arrayOfColorSchemeNames: [String] = ["Light Blue", "Brown Variety", "Light Orange", "Pink and Purple", "Dark Mode" ]
    var arrayOfFonts: [String] = ["Helvetica", "AmericanTypewriter", "ArialMT", "Avenir-Black", "Baskerville","ChalkboardSE-Regular", "TimesNewRomanPSMT ", "Verdana"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == colorSchemePickerView {
            var arrayOfColorSchemes: [[Colors]] = [lightBlueColorScheme, brownVarietyColorScheme, lightOrangeColorScheme, pinkAndPurpleColorScheme, darkModeColorScheme]

            currentColorScheme = arrayOfColorSchemes[row]
           return arrayOfColorSchemeNames[row] //Let's sort this out tomorrow
        } else  {
            currentFont = arrayOfFonts[row]
            return arrayOfFonts[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == colorSchemePickerView {
           return arrayOfColorSchemeNames.count
        } else {
           return arrayOfFonts.count
        }
    }


    
    @IBAction func applySettings(_ sender: Any) {
        globalVariables.currentSettings = Settings(colorScheme: currentColorScheme, font: currentFont)
        print("GO")
        print(globalVariables.currentSettings.colorScheme)
        print(globalVariables.currentSettings.font)
        print("STOP")
    }
    
    
    //Button that says "Save Settings", and when it is clicked...
    // globalVariables.currentSettings = Settings(colorScheme:........)

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
