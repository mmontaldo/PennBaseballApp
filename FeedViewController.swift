//
//  FeedViewController.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/5/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import UIKit

class FeedViewController: UITableViewController {
    
    let practiceData = [
        Practice(date: "3/26/16", location: "Get a lift in Monday open hours", title: "Announcement"),
        Practice(date: "3/25/16", location: "Meiklejohn Stadium", title: "Game vs. Princeton"),
        Practice(date: "3/24/16", location: "Get to bed early tonight", title: "Announcement"),
        Practice(date: "3/24/16", location: "Meiklejohn Stadium", title: "Game vs. Cornell"),
        Practice(date: "3/23/16", location: "Check email from Rosemarie about Tutoring", title: "Announcement"),
        Practice(date: "3/22/16", location: "Meiklejohn Stadium", title: "Team Practice"),
        Practice(date: "3/22/16", location: "Team meeting at 3:00pm today", title: "Announcement"),
        Practice(date: "3/21/16", location: "The Bubble at Penn Park", title: "Team Practice"),
        Practice(date: "3/21/16", location: "Baseball America", title: "Tip of the Day"),
        Practice(date: "3/20/16", location: "Meiklejohn Stadium", title: "Team Practice"),
        Practice(date: "3/19/16", location: "Today's Practice is cancelled", title: "Announcement"),
        Practice(date: "3/18/16", location: "Meiklejohn Stadium", title: "Team Practice"),
        Practice(date: "3/18/16", location: "Youtube Video", title: "Tip of the Day"),
        Practice(date: "3/17/16", location: "Meiklejohn Stadium", title: "Game vs. Dartmouth"),
        Practice(date: "3/16/16", location: "Pitchers who threw today", title: "Announcement"),
        Practice(date: "3/15/16", location: "Meiklejohn Stadium", title: "Game vs. Harvard"),]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return practiceData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FeedItem", forIndexPath: indexPath)

        let practice = practiceData[indexPath.row] as Practice
        
        if let dateLabel = cell.viewWithTag(2) as? UILabel {
            dateLabel.text = practice.date
        }
        if let locationLabel = cell.viewWithTag(1) as? UILabel {
            locationLabel.text = practice.location
        }
        if let titleLabel = cell.viewWithTag(3) as? UILabel {
            titleLabel.text = practice.title
        }
        if let locationImage = cell.viewWithTag(4) as? UIImageView {
            if (practice.title == "Announcement" || practice.title == "Tip of the Day"){
                locationImage.hidden = true
            }
        }
        if let practiceImage = cell.viewWithTag(5) as? UIImageView {
            if (practice.title == "Announcement"){
                practiceImage.image = UIImage(named:"announcementAvatar.png")
            } else if (practice.title == "Tip of the Day"){
                practiceImage.image = UIImage(named:"dailyTipAvatar.png")
            } else {
                practiceImage.image = UIImage(named:"practiceAvatar.png")
            }
        }
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
