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
        SortArray = ["Smart Sort", "Date", "Likes", "Views", "Practices", "Games", "Tips", "Announcements"]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = SortArray[indexPath.row]
        
        if (indexPath.row   != 0){
            cell.accessoryType = .None
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SortArray.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestVC = segue.destinationViewController as! FeedViewController
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        DestVC.varView = indexPath.row
        
    }
}
