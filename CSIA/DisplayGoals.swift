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
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = UserDefaults.standard.string(forKey: String(indexPath.row) + "title")
        return cell
    }
    

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
        //    print("This is where the deleting-a-goal logic will be")
            
            UserDefaults.standard.removeObject(forKey: String(indexPath.row) + "title")
            UserDefaults.standard.removeObject(forKey: String(indexPath.row) + "description")
            globalVariables.KeyNumber = globalVariables.KeyNumber - 1
            
            print("---Start---")
            print("This is the globlVariables.keyNumber")
            print(globalVariables.KeyNumber)
            print("---end---")
            
            var currentRow = indexPath.row
            
            repeat{
                UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentRow + 1) + "title"), forKey: String(currentRow) + "title")
                UserDefaults.standard.set(UserDefaults.standard.object(forKey: String(currentRow + 1) + "description"), forKey: String(currentRow) + "description")
                currentRow = currentRow + 1
            }while UserDefaults.standard.object(forKey: String(currentRow) + "title") != nil
            
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
            } while UserDefaults.standard.object(forKey: String(count) + "title") != nil
            globalVariables.KeyNumber = count - 1
        print("---Start---")
        print("This is the globlVariables.keyNumber")
        print(globalVariables.KeyNumber)
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
