//
//  ArchiveViewController.swift
//  PennBaseballApp
//
//  Created by Mitch Montaldo on 12/7/15.
//  Copyright © 2015 user113698. All rights reserved.
//

import Foundation

class ArchiveViewController: UIViewController {
    
    @IBOutlet var MenuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        
        MenuButton.target = self.revealViewController()
        MenuButton.action = "revealToggle:"
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

    }
}