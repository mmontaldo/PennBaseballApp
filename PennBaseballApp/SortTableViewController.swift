//
//  SortTableViewController.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/13/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation
import UIKit

class SortTableViewController: UITableViewController {
    
    var SortArray = [String]()
    override func viewDidLoad() {
        SortArray = ["Date", "Likes", "Views", "Practices", "Games", "Tips", "Announcements"]
    }
    
    var selectedIndex : Int = 0
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = SortArray[indexPath.row]
        
        if (indexPath.row == selectedIndex){
            cell.accessoryType = .Checkmark
        } else {
            cell.accessoryType = .None
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //set check marked index
        selectedIndex = indexPath.row
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SortArray.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 55
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let DestVC = segue.destinationViewController as? UINavigationController
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        if let feedTableController = DestVC?.topViewController as? FeedViewController{
            feedTableController.varView = indexPath.row
        }
        
    }
}
