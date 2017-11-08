//
//  TripViewCellModel.swift
//  SnowRide
//
//  Created by djchai on 11/8/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import Foundation

// When the date picker is saved, append to the array here!!!
struct tripList {
    var driverList: [TripDate] = [
        TripDate(departureDate: "01", returnDate: "02"),
        TripDate(departureDate: "02", returnDate: "03")
    ]
    
    var passengerList: [TripDate] = [
        TripDate(departureDate: "01", returnDate: "02"),
        TripDate(departureDate: "02", returnDate: "03")
    ]
}
