//
//  MenuTableViewController.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/13/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation
import UIKit

class MenuTableViewController: UITableViewController {
    
    var SortArray = [String]()
    override func viewDidLoad() {
        SortArray = ["Feed", "Archive", "My Profile"]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("menu_cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = SortArray[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 55
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SortArray.count
    }
    
}