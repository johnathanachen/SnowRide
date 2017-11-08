//
//  TripViewCell.swift
//  SnowRide
//
//  Created by djchai on 11/7/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import Foundation
import UIKit

class TripViewCell: UITableViewCell {
    
    @IBOutlet weak var departDateLabel: UILabel!
    @IBOutlet weak var returnDateLabel: UILabel!
    
    
    var trip: TripDate? {
        didSet {
            departDateLabel.text = trip?.departureDate
            returnDateLabel.text = trip?.returnDate
        }
    }
}
