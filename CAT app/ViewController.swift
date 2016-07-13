//
//  ViewController.swift
//  CAT app
//
//  Created by Jason Crawford on 6/9/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedIndex = -1
    
    var dataArray : [[String:String]] = [["FirstName" : "How do I know if a loved one or myself is addicted to pain medicine?", "LastName" : "Increase in usage, changes in personality and behavior, emotional withdrawal, continuing use after symptoms clear, spend more time seeking painkillers, and neglecting responsibilities."], ["FirstName" : "John", "LastName" : "D"], ["FirstName" : "Bob", "LastName" : "G"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        if(selectedIndex == (indexPath as NSIndexPath).row) {
            return 100;
        } else {
            return 40;
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! customCell
        let obj = dataArray[(indexPath as NSIndexPath).row]
        cell.firstLabelView.text = obj["FirstName"]
        cell.secondLabelView.text = obj["LastName"]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        if(selectedIndex == (indexPath as NSIndexPath).row) {
            selectedIndex = -1
        } else {
            selectedIndex = (indexPath as NSIndexPath).row
        }
        self.tableView.beginUpdates()
        self.tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic )
        self.tableView.endUpdates()
    }


}

