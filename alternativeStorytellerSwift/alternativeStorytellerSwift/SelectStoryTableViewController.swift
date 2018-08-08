//
//  SelectStoryTableViewController.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/08/02.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import UIKit

class SelectStoryTableViewController: UITableViewController {
    var selectArr: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = Bundle.main.path(forResource: "storySetting", ofType:"plist" )
//        let plist = NSArray(contentsOfFile: filePath!)
        
//        for list in plist! {
//            selectArr.append(list[]as! String)
//            print(key.key)
//        }
        if let dictArray = NSArray(contentsOfFile: filePath!) {
            for item in dictArray {
                if let dict = item as? NSDictionary {
                    selectArr.append(dict["title"] as! String)
                }
            }
        }
        
//        let selectArr = arrTitle
        print(selectArr)
            // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return selectArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = selectArr[indexPath.row]
        // Configure the cell...

        return cell
    }
    override func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        // [indexPath.row] から画像名を探し、UImage を設定
        let selectedStory  = selectArr[indexPath.row] 
        if selectedStory != nil {
            let nextvc = EditMemberNameViewController()
            nextvc.storyNum = indexPath.row
            self.present(nextvc, animated: true, completion: nil)
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
