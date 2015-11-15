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
    var date: String?
    var location: String?
    var title: String?
    var likes: Int?
    var views: Int?
    var dateNum: Int?
    
    init(date: String?, location: String?, title: String?, likes: Int?, views: Int?, dateNum: Int?){
        self.date = date
        self.location = location
        self.title = title
        self.likes = likes
        self.views = views
        self.dateNum = dateNum
    }
}