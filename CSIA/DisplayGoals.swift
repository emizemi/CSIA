//
//  DisplayGoals.swift
//  CSIA
//
//  Created by Emilio Encarnacion on 23/7/18.
//  Copyright © 2018 Emilio Encarnacion. All rights reserved.
//

import UIKit

class DisplayGoals: UIViewController, UITableViewDelegate, UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //We can't do "return globalVariables.goalKey + 1" because the variables haven't loaded
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalTitle")
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        globalVariables.selectedGoalTitle = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalTitle")!
        globalVariables.selectedGoalDescription = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalDescription")!
        globalVariables.selectedGoalDateAdded = UserDefaults.standard.string(forKey: String(indexPath.row) + "goalDateAdded")!

        
        globalVariables.selectedGoal =  Goal(title: globalVariables.selectedGoalTitle, description: globalVariables.selectedGoalDescription, dateAdded: globalVariables.selectedGoalDateAdded, checkin: [])
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
