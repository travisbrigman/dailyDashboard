//
//  getCurrentDateAndTime.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 12/18/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation

class DateAndTimeClass {

    func getCurrentDateAndTime() -> (String, String) {
        let formatter = DateFormatter()
        let timeFormatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        timeFormatter.dateFormat = "h:mm a"
        let dayOfWeekAndDay = formatter.string(from: Date())
        let amPmClock = timeFormatter.string(from: Date())
        return(dayOfWeekAndDay, amPmClock)
    }
    
}
