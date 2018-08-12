//
//  DisplayGoals.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 23/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplayGoals: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = -1
        repeat{
            count = count + 1
        } while UserDefaults.standard.object(forKey: String(count) + "goalTitle") != nil
        globalVariables.goalKey = count - 1
        return globalVariables.goalKey + 1
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalTitle")
        
        
        //This indexes into the appropriate color of the selected color scheme
       cell.textLabel?.textColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[3].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[3].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[3].blueComponent)/225.0,alpha:1.00)
        
        cell.textLabel?.font = UIFont(name: globalVariables.currentSettings.font, size: 19.0)

        
        cell.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[0].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[0].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[0].blueComponent)/225.0,alpha:1.00)
        
        //JUST DIVIDE BY 225.0!
      //cell.textLabel?.textColor = UIColor(red: 183/225.0, green:215/225.0, blue:232/225.0,alpha:1.00)
   //    cell.textLabel?.textColor = UIColor.red

        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        globalVariables.selectedGoalTitle = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalTitle")!
        globalVariables.selectedGoalDescription = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalDescription")!
        globalVariables.selectedGoalDateAdded = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalDateAdded")!

        globalVariables.selectedGoalIndex = indexPath.row
        
        
        globalVariables.selectedGoal =  Goal(title: globalVariables.selectedGoalTitle, description: globalVariables.selectedGoalDescription, dateAdded: globalVariables.selectedGoalDateAdded, index: globalVariables.selectedGoalIndex)
        performSegue(withIdentifier: "goalSegue", sender: self)
    }
    

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            UserDefaults.standard.removeObject(forKey: String(indexPath.row) + "goalTitle")
            UserDefaults.standard.removeObject(forKey: String(indexPath.row) + "goalDescription")
            UserDefaults.standard.removeObject(forKey: String(indexPath.row) + "goalDateAdded")

            if globalVariables.goalKey != -1 {
            globalVariables.goalKey = globalVariables.goalKey - 1
            }
            
            print("---Start---")
            print("This is the globlVariables.goalKey")
            print(globalVariables.goalKey)
            print("---end---")
            
            var currentRow = indexPath.row
            repeat{
                UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentRow + 1) + "goalTitle"), forKey: String(currentRow) + "goalTitle")
                UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentRow + 1) + "goalDescription"), forKey: String(currentRow) + "goalDescription")
                UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentRow + 1) + "goalDateAdded"), forKey: String(currentRow) + "goalDateAdded")

                
               // UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentRow + 1) + "goal"), forKey: String(currentRow) + "goal")
                currentRow = currentRow + 1
            }while UserDefaults.standard.object(forKey: String(currentRow) + "goalTitle") != nil
            
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.view.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[1].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[1].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[1].blueComponent)/225.0,alpha:1.00)
        self.tableView.backgroundColor = UIColor(red: CGFloat(globalVariables.currentSettings.colorScheme[1].redComponent)/225.0, green:CGFloat(globalVariables.currentSettings.colorScheme[1].greenComponent)/225.0, blue:CGFloat(globalVariables.currentSettings.colorScheme[1].blueComponent)/225.0,alpha:1.00)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //We can't use viewDidLoad(), since all the elements might not have loaded yet
    //ViewDidAppear makes sure that the view has appeared
    override func viewDidAppear(_ animated: Bool) {
            var count = -1
            repeat{
                count = count + 1
            } while UserDefaults.standard.object(forKey: String(count) + "goalTitle") != nil
            globalVariables.goalKey = count - 1
        print("---Start---")
        print("This is the globlVariables.goalKey")
        print(globalVariables.goalKey)
        print("---end---")
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
