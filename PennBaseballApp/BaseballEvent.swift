//
//  BaseballEvent.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/13/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation
import UIKit

struct BaseballEvent {
    var type: String?
    var date: String?
    var location: String?
    var title: String?
    var likes: Int?
    var views: Int?
    var dateNum: Int?
    var summary: String?
    var equipment: String?
    var reportTime: String?
    var reportTimePP: String?
    
    
    init(type: String?, date: String?, location: String?, title: String?, likes: Int?, views: Int?, dateNum: Int?, summary: String?, equipment: String?, reportTime: String?, reportTimePP: String){
        self.type = type
        self.date = date
        self.location = location
        self.title = title
        self.likes = likes
        self.views = views
        self.dateNum = dateNum
        self.summary = summary
        self.equipment = equipment
        self.reportTime = reportTime
        self.reportTimePP = reportTimePP
    }

}