//
//  LoginController.swift
//  SnowRide
//
//  Created by Johnathan Chen on 10/24/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class LoginController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var usrDetails: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

    }
    
    // Placeholder to format view cells
    let userDetails = [
        "name",
        "phoneNum",
        "email",
    ]
    
}

