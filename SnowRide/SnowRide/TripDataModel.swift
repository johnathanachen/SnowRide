//
//  Model.swift
//  SnowRide
//
//  Created by Johnathan Chen on 10/25/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import Foundation


struct TripDate {
    let departureDate: String
    let returnDate: String
//    let user: String
//    let passenger: String?
//    let driver: String?
}

let passengerAvailability = TripDate(departureDate: "01", returnDate: "02")
let driverAvailability = TripDate(departureDate: "01", returnDate: "02")

func matchDates() {
    if passengerAvailability.departureDate ==  driverAvailability.departureDate {
        if passengerAvailability.returnDate == driverAvailability.returnDate {
            print("pass")
        }
    }
}

//func matchDates2() {
//    for (departures) in tripList {
//                
//        
//    }
//}


