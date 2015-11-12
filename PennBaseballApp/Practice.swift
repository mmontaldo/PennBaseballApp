//
//  Practice.swift
//  PennBaseballApp
//
//  Created by user113698 on 11/5/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation
import UIKit

struct Practice {
    var date: String?
    var location: String?
    var title: String?
    
    init(date: String?, location: String?, title: String?){
        self.date = date
        self.location = location
        self.title = title
    }
}