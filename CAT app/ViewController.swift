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
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row) {
            return 100;
        } else {
            return 40;
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! customCell
        let obj = dataArray[indexPath.row]
        cell.firstLabelView.text = obj["FirstName"]
        cell.secondLabelView.text = obj["LastName"]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(selectedIndex == indexPath.row) {
            selectedIndex = -1
        } else {
            selectedIndex = indexPath.row
        }
        self.tableView.beginUpdates()
        self.tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.tableView.endUpdates()
    }


}

