//
//  FeedItemDetailViewController.swift
//  PennBaseballApp
//
//  Created by Mitch Montaldo on 12/7/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation

class FeedItemDetailViewController: UIViewController {
    
    var baseballEvent: BaseballEvent?
    
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var locationLabel: UILabel!
    
    @IBOutlet var summaryMessageLabel: UILabel!
    
    @IBOutlet var equipmentMessageLabel: UILabel!
  
    @IBOutlet var reportTimeMessageLabel: UILabel!
    
    @IBOutlet var locationImage: UIImageView!
    
    @IBOutlet var summaryLabel: UILabel!
    
    @IBOutlet var equipmentLabel: UILabel!
    
    @IBOutlet var reportTimeLabel: UILabel!
    
    @IBOutlet var reportTimeMessagePPLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Date Label
        dateLabel.text = baseballEvent!.date
        dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 18)
        
        //Title Label
        titleLabel.text = baseballEvent!.title
       // titleLabel.textColor = UIColor.blackColor()
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)
        
        //Location Label
        locationLabel.text = baseballEvent!.location
        if (baseballEvent!.type == "Announcement" || baseballEvent!.type == "Tip"){
            locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 22)
        } else {
            locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 14)
        }
        
        //Location image
        if (baseballEvent!.type == "Announcement" || baseballEvent!.type == "Tip"){
            locationImage.hidden = true
        } else {
            locationImage.hidden = false
            locationImage.image = UIImage(named:"location.png")
        }
        
        //Summary Message
        if (baseballEvent!.type == "Announcement" || baseballEvent!.type == "Tip"){
            summaryMessageLabel.hidden = true
            equipmentMessageLabel.hidden = true
            reportTimeMessageLabel.hidden = true
            reportTimeMessagePPLabel.hidden = true
            summaryLabel.hidden = true
            equipmentLabel.hidden = true
            reportTimeLabel.hidden = true
        } else {
            summaryLabel.hidden = false
            equipmentLabel.hidden = false
            reportTimeLabel.hidden = false
            summaryMessageLabel.hidden = false
            equipmentMessageLabel.hidden = false
            reportTimeMessageLabel.hidden = false
            reportTimeMessagePPLabel.hidden = false
            
            summaryMessageLabel.text = baseballEvent!.summary
            equipmentMessageLabel.text = baseballEvent!.equipment
            reportTimeMessageLabel.text = baseballEvent!.reportTime
            reportTimeMessagePPLabel.text = baseballEvent!.reportTimePP
        }
        
        
    }
}