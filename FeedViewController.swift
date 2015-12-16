//
//  FeedViewController.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/5/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import UIKit

class FeedViewController: UITableViewController {
    

    @IBOutlet var MenuButton: UIBarButtonItem!
    
    @IBOutlet var SortButton: UIBarButtonItem!
    
    var varView = Int()
    
    var baseballEventData : [BaseballEvent] = []

    var onlyPractices: Bool = false
    
    var onlyGames: Bool = false
    
    var onlyTips: Bool = false
    
    var onlyAnnouncements: Bool = false
    
    var valueToPass: BaseballEvent?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            
            let summaryData : [String] = [
                "Rosemarie sent an email about academic eligability. Please read and respond today. If you are taking less than 4 classes this semester please set up a time to talk with Rosemarie.",
                "Today's practice will be a short walk through of bunt plays and offensive signs and then finish with infield defense and BP.",
                "Christi will have a lift written on the board. Please find a time between 10am-2pm on Monday to get to Weiss.",
                "Ivy League rivals face off today at Meiklejohn Stadium.",
                "Get to bed early.",
                "Rosemarie sent an email about academic tutoring. Please read and respond today. If you are taking less than 4 classes this semester please set up a time to talk with Rosemarie.",
                ]
            
            let equipmentData : [String] = ["Bring all."]
            
            let reportTimeData : [String] = ["Pitchers: 3:00pm"]
            
            let reportTimePPData : [String] = ["Position Players: 2:30pm"]
            

            baseballEventData = [
                BaseballEvent(type: "Announcement", date: "3/29/16", location: "Check email from Rosemarie", title:"Announcement", likes: 0, views: 16, dateNum: 32316, summary: summaryData[0], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Practice", date: "3/28/16", location: "Meiklejohn Stadium", title: "Team Practice", likes: 3, views: 31, dateNum: 32217, summary: summaryData[1], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Announcement", date: "3/26/16", location: "Monday Open Hours Lift", title: "Announcement", likes: 0, views: 22, dateNum: 32616, summary: summaryData[2], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Game", date: "3/25/16", location: "Meiklejohn Stadium", title: "Game vs. Princeton", likes: 20, views: 25, dateNum: 32516, summary: summaryData[3], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Announcement", date: "3/24/16", location: "Get to bed early tonight", title: "Announcement", likes: 2, views: 10, dateNum: 32417, summary: summaryData[4], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Game", date: "3/24/16", location: "Meiklejohn Stadium", title: "Game vs. Cornell", likes: 22, views: 28, dateNum: 32416, summary: summaryData[3], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Announcement", date: "3/23/16", location: "Check email from Rosemarie about Tutoring", title:"Announcement", likes: 0, views: 16, dateNum: 32316, summary: summaryData[5], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Practice", date: "3/22/16", location: "Meiklejohn Stadium", title: "Team Practice", likes: 3, views: 31, dateNum: 32217, summary: summaryData[1], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Announcement", date: "3/22/16", location: "Team meeting at 3:00pm today", title: "Announcement", likes: 2, views: 35, dateNum: 32216, summary: summaryData[0], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Practice", date: "3/21/16", location: "The Bubble at Penn Park", title: "Team Practice", likes: 0, views: 32, dateNum: 32117, summary: summaryData[1], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Tip", date: "3/21/16", location: "Baseball America", title: "Tip of the Day", likes: 9, views: 25, dateNum: 32116, summary: summaryData[0], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Practice", date: "3/20/16", location: "Meiklejohn Stadium", title: "Team Practice", likes: 4, views: 23, dateNum: 32016, summary: summaryData[1], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Announcement", date: "3/19/16", location: "Today's Practice is cancelled", title: "Announcement", likes: 6, views: 34, dateNum: 31916, summary: summaryData[0], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Practice", date: "3/18/16", location: "Meiklejohn Stadium", title: "Team Practice", likes: 5, views: 33, dateNum: 31817, summary: summaryData[1], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Tip", date: "3/18/16", location: "Youtube Video", title: "Tip of the Day", likes: 13, views: 23, dateNum: 31816, summary: summaryData[0], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Game", date: "3/17/16", location: "Meiklejohn Stadium", title: "Game vs. Dartmouth", likes: 12, views: 22, dateNum: 31716, summary: summaryData[3], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Announcement", date: "3/16/16", location: "Pitchers who threw today", title: "Announcement", likes: 1, views: 16, dateNum: 31616, summary: summaryData[0], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0]),
                BaseballEvent(type: "Game", date: "3/15/16", location: "Meiklejohn Stadium", title: "Game vs. Harvard", likes: 24, views: 32, dateNum: 31516, summary: summaryData[3], equipment: equipmentData[0], reportTime: reportTimeData[0], reportTimePP: reportTimePPData[0])]
            
            let logo = UIImage(named: "PennBaseballTitle") as UIImage?
            let imageView = UIImageView(image:logo)
            imageView.frame.size.width = 190;
            imageView.frame.size.height = 35;
            imageView.contentMode = UIViewContentMode.ScaleAspectFit
            
            self.navigationItem.titleView = imageView
            
            
            MenuButton.target = self.revealViewController()
            MenuButton.action = "revealToggle:"
            
            SortButton.target = self.revealViewController()
            SortButton.action = "rightRevealToggle:"
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            if (varView == 0){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.date > b.date})
                onlyPractices = false
                onlyGames = false
                onlyTips = false
                onlyAnnouncements = false
            } else if (varView == 1){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.likes > b.likes})
                onlyPractices = false
                onlyGames = false
                onlyTips = false
                onlyAnnouncements = false
            } else if (varView == 2){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.views > b.views})
                onlyPractices = false
                onlyGames = false
                onlyTips = false
                onlyAnnouncements = false
            } else if (varView == 3){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.date > b.date})
                onlyPractices = true
                onlyGames = false
                onlyTips = false
                onlyAnnouncements = false
            } else if (varView == 4){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.date > b.date})
                onlyGames = true
                onlyPractices = false
                onlyTips = false
                onlyAnnouncements = false
            } else if (varView == 5){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.date > b.date})
                onlyTips = true
                onlyPractices = false
                onlyGames = false
                onlyAnnouncements = false
            } else if (varView == 6){
                baseballEventData.sortInPlace({(a : BaseballEvent, b : BaseballEvent) -> Bool in return a.date > b.date})
                onlyAnnouncements = true
                onlyPractices = false
                onlyGames = false
                onlyTips = false
            }
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
        
        
        let event = baseballEventData[indexPath.row] as BaseballEvent
        
        if let dateLabel = cell.viewWithTag(2) as? UILabel {
            dateLabel.text = event.date
            if (event.type == "Game"){
                dateLabel.textColor = UIColor.whiteColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 22)
            } else {
                dateLabel.textColor = UIColor.blackColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 18)
            }
        }
        if let locationLabel = cell.viewWithTag(1) as? UILabel {
            locationLabel.text = event.location
            if (event.type == "Game"){
                locationLabel.textColor = UIColor.whiteColor()
                //locationLabel.shadowColor = UIColor.blueColor()
                locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 18)
            } else {
                locationLabel.textColor = UIColor.blackColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 14)
            }
        }
        if let titleLabel = cell.viewWithTag(3) as? UILabel {
            titleLabel.text = event.title
            if (event.type == "Game"){
                titleLabel.textColor = UIColor.whiteColor()
                //titleLabel.shadowColor = UIColor.blueColor()
                titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 22)
            } else {
                titleLabel.textColor = UIColor.blackColor()
                //dateLabel.shadowColor = UIColor.blueColor()
                titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)
            }
        }
        if let locationImage = cell.viewWithTag(4) as? UIImageView {
            if (event.type == "Announcement" || event.type == "Tip"){
                locationImage.hidden = true
            }
            if (event.type == "Practice"){
                locationImage.hidden = false
                locationImage.image = UIImage(named:"location.png")
            }
            if (event.type == "Game"){
                locationImage.hidden = false
                locationImage.image = UIImage(named:"whiteLocation.png")
            }
        }
        if let eventImage = cell.viewWithTag(5) as? UIImageView {
            if (event.type == "Announcement"){
                eventImage.hidden = false
                eventImage.image = UIImage(named:"announcementAvatar.png")
            } else if (event.type == "Tip"){
                eventImage.hidden = false
                eventImage.image = UIImage(named:"dailyTipAvatar.png")
            } else if (event.type == "Practice"){
                eventImage.hidden = false
                eventImage.image = UIImage(named:"practiceAvatar.png")
            } else if (event.type == "Game"){
                eventImage.hidden = true
                var imageView = UIImageView(frame: CGRectMake(0, 0, cell.frame.width, cell.frame.height))
                let image = UIImage(named: "gameBkgdRonnie.png")
                imageView.image = image
                cell.backgroundView = UIView()
                cell.backgroundView!.addSubview(imageView)
            }
        }
    
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //let cell = tableView.dequeueReusableCellWithIdentifier("FeedItem", forIndexPath: indexPath)
        
        let event = baseballEventData[indexPath.row] as BaseballEvent
        
        if (onlyPractices && event.type != "Practice"){
            return 0
        } else if (onlyGames && event.type != "Game"){
            return 0
        } else if (onlyTips && event.type != "Tip"){
            return 0
        } else if (onlyAnnouncements && event.type != "Announcement"){
            return 0
        }
        
        if (event.type == "Game"){
            return 200
        } else {
            return 85
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        valueToPass = baseballEventData[indexPath.row];
        performSegueWithIdentifier("segue", sender: self);
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "segue") {
            
            // initialize new view controller and cast it as your view controller
            var viewController = segue.destinationViewController as! FeedItemDetailViewController
            // your new view controller should have property that will store passed value
            viewController.baseballEvent = valueToPass
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
