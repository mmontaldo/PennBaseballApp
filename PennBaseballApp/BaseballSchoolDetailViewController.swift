//
//  BaseballSchoolDetailViewController.swift
//  PennBaseballApp
//
//  Created by Mitch Montaldo on 12/15/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation

class BaseballSchoolDetailViewController: UIViewController {
    
    var baseballSchoolEvent: BaseballSchoolEvent?
    
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var detailLabel: UILabel!
    
    @IBOutlet var notesMessageLabel: UILabel!
    
    @IBOutlet var videoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Date Label
        dateLabel.text = baseballSchoolEvent!.date
        dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 18)
        
        //Title Label
        titleLabel.text = baseballSchoolEvent!.title
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)
        
        //Detail Label
        detailLabel.text = baseballSchoolEvent!.location
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)
        
        //Notes Label
        notesMessageLabel.text = baseballSchoolEvent!.notes
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 18)

    }

}