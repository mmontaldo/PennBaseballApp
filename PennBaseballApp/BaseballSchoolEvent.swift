//
//  BaseballEvent.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/13/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation
import UIKit

struct BaseballSchoolEvent {
    
    var type: String?
    var date: String?
    var location: String?
    var title: String?
    var notes: String?
    var likes: Int?
    var views: Int?
    var selfViews: Int?
    var daysOld: Int?
    var weight: Double?
    
    var tipAffinity = 0.6
    var practiceVideoAffinity = 0.5
    var personalVideoAffinity = 0.8
    
    init(type: String?, date: String?, location: String?, title: String?, notes: String?, likes: Int?, views: Int?, selfViews: Int?, daysOld: Int?){
        self.type = type
        self.date = date
        self.location = location
        self.title = title
        self.notes = notes
        self.likes = likes
        self.views = views
        self.selfViews = selfViews
        self.daysOld = daysOld
        self.weight = calculateWeight()
    }
    
    //Calculate weight for Baseball School Table View
    func calculateWeight() -> Double {
        
        var weight: Double = 0.0;
        
        //Weight based on self views, teammate views, and likes
        weight += Double(selfViews!);
        weight += Double(views!) / 5;
        weight += Double(likes!) / 3
        
        //Multiple by Affinity
        if (type == "Tip"){
            weight *= tipAffinity
        }
        if (type == "Practice Video"){
            weight *= practiceVideoAffinity
        }
        if (type == "Personal Video"){
            weight *= personalVideoAffinity
        }
        
        //Calculate Time Decay
        weight -= Double(daysOld!)
        
        return weight
    }
}