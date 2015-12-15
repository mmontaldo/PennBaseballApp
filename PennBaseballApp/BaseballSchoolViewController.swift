//
//  FeedViewController.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/5/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import UIKit

class BaseballSchoolViewController: UITableViewController {
    
    
    @IBOutlet var MenuButton: UIBarButtonItem!
    
    var baseballEventData : [BaseballSchoolEvent] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            
            baseballEventData = [
                BaseballSchoolEvent(type: "Practice Video", date: "3/24/16", location: "Bunting Groups", title: "Today's Practice Video", likes: 3, views: 15, selfViews: 3, daysOld: 0),
                BaseballSchoolEvent(type: "Personal Video", date: "3/23/16", location: "Mitch Montaldo", title: "Personal Video", likes: 4, views: 15, selfViews: 10, daysOld: 1),
                BaseballSchoolEvent(type: "Personal Video", date: "3/22/16", location: "Ronnie Glenn", title: "Pitching Video", likes: 7, views: 23, selfViews: 1, daysOld: 1),
                BaseballSchoolEvent(type: "Tip", date: "3/21/16", location: "Baseball America", title: "5 Ways to Improve Pitching Mechanics", likes: 12, views: 21, selfViews: 2, daysOld: 2),
                BaseballSchoolEvent(type: "Tip", date: "3/18/16", location: "Youtube Video", title: "Hitting Lesson", likes: 15, views: 23, selfViews: 4, daysOld: 2),
                BaseballSchoolEvent(type: "Practice Video", date: "3/17/16", location: "Bunting Groups", title: "Today's Practice Video", likes: 13, views: 23, selfViews: 3, daysOld: 3),
                BaseballSchoolEvent(type: "Personal Video", date: "3/16/16", location: "Mitch Montaldo", title: "Hitting Video", likes: 13, views: 23, selfViews: 3, daysOld: 4),
                BaseballSchoolEvent(type: "Personal Video", date: "3/15/16", location: "Connor Cuff", title: "Pitching Video", likes: 13, views: 23, selfViews: 3, daysOld: 5),
                BaseballSchoolEvent(type: "Tip", date: "3/14/16", location: "Baseball America", title: "Improve Pitching Mechanics", likes: 9, views: 25, selfViews: 3, daysOld: 5),
                BaseballSchoolEvent(type: "Tip", date: "3/13/16", location: "Youtube Video", title: "Hitting Lesson with Tony Gwynn", likes: 13, views: 23, selfViews: 3, daysOld: 10)]
            
            baseballEventData.sortInPlace({(a : BaseballSchoolEvent, b : BaseballSchoolEvent) -> Bool in return a.weight > b.weight})
            
            MenuButton.target = self.revealViewController()
            MenuButton.action = "revealToggle:"
            
            
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
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
        return baseballEventData.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FeedItem", forIndexPath: indexPath)
        
        cell.backgroundView = .None
        
        
        let event = baseballEventData[indexPath.row] as BaseballSchoolEvent
        
        if let dateLabel = cell.viewWithTag(2) as? UILabel {
            dateLabel.text = event.date
            if (indexPath.row == 0 || indexPath.row == 1){
                dateLabel.textColor = UIColor.whiteColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 25)
            } else {
                dateLabel.textColor = UIColor.blackColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 18)
            }
        }
        if let locationLabel = cell.viewWithTag(1) as? UILabel {
            locationLabel.text = event.location
            if (indexPath.row == 0 || indexPath.row == 1){
                locationLabel.textColor = UIColor.whiteColor()
                //locationLabel.shadowColor = UIColor.blueColor()
                locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 22)
            } else {
                locationLabel.textColor = UIColor.blackColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 14)
            }
        }
        if let titleLabel = cell.viewWithTag(3) as? UILabel {
            titleLabel.text = event.title
            if (indexPath.row == 0 || indexPath.row == 1){
                titleLabel.textColor = UIColor.whiteColor()
                //titleLabel.shadowColor = UIColor.blueColor()
                titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 25)
            } else {
                titleLabel.textColor = UIColor.blackColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)
            }
        }
        if let locationImage = cell.viewWithTag(4) as? UIImageView {
                locationImage.hidden = true
        }
        if let eventImage = cell.viewWithTag(5) as? UIImageView {
                eventImage.hidden = false
                eventImage.image = UIImage(named:"dailyTipAvatar.png")
            if (indexPath.row == 0){
                eventImage.hidden = true
                var imageView = UIImageView(frame: CGRectMake(0, 2, cell.frame.width, cell.frame.height-2))
                let image = UIImage(named: "baseball_analysis_pic")
                imageView.image = image
                cell.backgroundView = UIView()
                cell.backgroundView!.addSubview(imageView)
            }
            if (indexPath.row == 1){
                eventImage.hidden = true
                var imageView = UIImageView(frame: CGRectMake(0, 2, cell.frame.width, cell.frame.height-2))
                let image = UIImage(named: "baseball_play")
                imageView.image = image
                cell.backgroundView = UIView()
                cell.backgroundView!.addSubview(imageView)
            }
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //let cell = tableView.dequeueReusableCellWithIdentifier("FeedItem", forIndexPath: indexPath)
        
        let event = baseballEventData[indexPath.row] as BaseballSchoolEvent
        
        if (indexPath.row == 0){
            return 200
        } else if (indexPath.row == 1) {
            return 170
        } else {
            return 85
        }
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
