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
    @IBOutlet weak var fontSizePickerView: UIPickerView!
    
    var brownVarietyColorScheme: [Colors] = [Colors(redComponent:185, greenComponent:147, blueComponent:108), ]
    var lightBlueColorScheme: [Colors] = []
    var lightOrangeColorScheme: [Colors] = []
    var pinkAndPurpleColorScheme: [Colors] = []
    var darkModeColorScheme: [Colors] = []
    
    var currentColorSchemeName: String = ""
    var currentColorScheme: [Colors] = []
    var currentFontSize: Int = 0
    var currentFont: String = ""
    
    var arrayOfColorSchemeNames: [String] = ["Brown Variety", "Light Blue","Light Orange", "Pink and Purple", "Dark Mode" ]
    var arrayOfFonts: [String] = ["AmericanTypewriter", "ArialMT", "Avenir-Black", "Baskerville","ChalkboardSE-Regular", "Helvetica", "TimesNewRomanPSMT ", "Verdana"]
    var arrayOfFontSizes: [Int] = [14,15,16,17,18,19,20]

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            var arrayOfColorSchemes: [[Colors]] = [brownVarietyColorScheme, lightBlueColorScheme, lightOrangeColorScheme, pinkAndPurpleColorScheme, darkModeColorScheme]

            currentColorScheme = arrayOfColorSchemes[row]
           return arrayOfColorSchemeNames[row] //Let's sort this out tomorrow
        } else if pickerView == fontPickerView {
            currentFont = arrayOfFonts[row]
            return arrayOfFonts[row]
        } else {
            currentFontSize = arrayOfFontSizes[row]
            return String(arrayOfFontSizes[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == colorSchemePickerView {
           return arrayOfColorSchemeNames.count
        } else if pickerView == fontPickerView {
           return arrayOfFonts.count
        } else {
           return arrayOfFontSizes.count
        }
    }


    
    @IBAction func applySettings(_ sender: Any) {
        globalVariables.currentSettings = Settings(colorScheme: currentColorScheme, fontSize: currentFontSize, font: currentFont)
        
        print(globalVariables.currentSettings.fontSize)
        print(globalVariables.currentSettings.colorScheme)
        print(globalVariables.currentSettings.font)
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
