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
    
    @IBOutlet var eventImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateLabel.text = baseballEvent!.date
        dateLabel.hidden = false
        if (baseballEvent!.type == "Game"){
            dateLabel.textColor = UIColor.whiteColor()
            //dateLabel.shadowColor = UIColor.blueColor()
            dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 22)
        } else {
            dateLabel.textColor = UIColor.blackColor()
            //dateLabel.shadowColor = UIColor.blueColor()
            dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 18)
        }
        
        locationLabel.text = baseballEvent!.location
        if (baseballEvent!.type == "Game"){
            locationLabel.textColor = UIColor.whiteColor()
            //locationLabel.shadowColor = UIColor.blueColor()
            locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 18)
        } else {
            locationLabel.textColor = UIColor.blackColor()
            //dateLabel.shadowColor = UIColor.blueColor()
            locationLabel.font = UIFont(name: locationLabel.font.fontName, size: 14)
        }
        
        titleLabel.text = baseballEvent!.title
        if (baseballEvent!.type == "Game"){
            titleLabel.textColor = UIColor.whiteColor()
            //titleLabel.shadowColor = UIColor.blueColor()
            titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 22)
        } else {
            titleLabel.textColor = UIColor.blackColor()
            //dateLabel.shadowColor = UIColor.blueColor()
            titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)
        }
        
        
    }
}