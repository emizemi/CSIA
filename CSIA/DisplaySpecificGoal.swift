//
//  DisplaySpecificGoal.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 24/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplaySpecificGoal: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateAddedLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        print("Back to the Specific Goal View view did appear")
    }
    override func viewDidLoad() {
        
        
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.numberOfLines = 0
      //  descriptionLabel.sizeToFit()
       
        super.viewDidLoad()
        self.collectionView.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[2].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[2].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[2].blueComponent)/225.0,alpha:1.00)
        
        self.view.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)

        self.titleLabel.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        self.titleLabel.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)
        
        self.descriptionLabel.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        self.descriptionLabel.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)

        
        self.dateAddedLabel.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        self.dateAddedLabel.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)

        
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
        
        print("Back to the Specific Goal View")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopUp(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! AddCheckInPopUp
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // let items = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]
        
        var checkInTitleArray = [String]()
        var count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        
        count = 0
        if UserDefaults.standard.string(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index)) != nil {
        repeat{
            checkInTitleArray.append(UserDefaults.standard.string(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index))!)
            count = count + 1
        } while count <= globalVariables.checkInKey
        
        }
        return checkInTitleArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var checkInTitleArray = [String]()
        var count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        count = 0
        repeat{
            checkInTitleArray.append(UserDefaults.standard.string(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index))!)
            count = count + 1
        } while count <= globalVariables.checkInKey
        
    
        var checkInDateAddedArray = [String]()
        count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInDateAdded" + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        count = 0
        repeat{
            checkInDateAddedArray.append(UserDefaults.standard.string(forKey: String(count) + "checkInDateAdded" + String(globalVariables.selectedGoal.index))!)
            count = count + 1
        } while count <= globalVariables.checkInKey
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.checkInTitleLabel.text = checkInTitleArray[indexPath.item]
        cell.checkInDateAddedLabel.text = checkInDateAddedArray[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        var checkInTitleArray = [String]()
        var count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        count = 0
        repeat{
            checkInTitleArray.append(UserDefaults.standard.string(forKey: String(count) + "checkInTitle" + String(globalVariables.selectedGoal.index))!)
            count = count + 1
        } while count <= globalVariables.checkInKey
        
        
        var checkInDateAddedArray = [String]()
        count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInDateAdded" + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        count = 0
        repeat{
            checkInDateAddedArray.append(UserDefaults.standard.string(forKey: String(count) + "checkInDateAdded" + String(globalVariables.selectedGoal.index))!)
            count = count + 1
        } while count <= globalVariables.checkInKey
        
        var checkInValueArray = [Int]()
        count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "checkInValue" + String(globalVariables.selectedGoal.index)) != nil
        globalVariables.checkInKey = count - 1
        count = 0
        repeat{
            checkInValueArray.append(UserDefaults.standard.integer(forKey: String(count) + "checkInValue" + String(globalVariables.selectedGoal.index)))
            count = count + 1
        } while count <= globalVariables.checkInKey
        
        globalVariables.selectedCheckIn = CheckIn(title: checkInTitleArray[indexPath.item], value: checkInValueArray[indexPath.item], dateAdded: checkInDateAddedArray[indexPath.item])
        
        globalVariables.selectedCheckInIndex = indexPath.item
        
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewCheckInPopUpID") as! ViewCheckInPopUp
        self.addChildViewController(popUpVC)
        popUpVC.view.frame = self.view.frame
        self.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParentViewController: self)
    }
    
//    func reloadCollectionView(){
//        print("hello")
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
