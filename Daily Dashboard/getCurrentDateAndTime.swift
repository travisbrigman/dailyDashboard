//
//  getCurrentDateAndTime.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 12/18/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation

class DateAndTime {
    
    var mainView = ViewController()
    
    @objc func getCurrentDateAndTime() {
        let formatter = DateFormatter()
        let timeFormatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        timeFormatter.dateFormat = "h:mm a"
        let dayOfWeekAndDay = formatter.string(from: Date())
        let amPmClock = timeFormatter.string(from: Date())
        mainView.dateAndTime.text = dayOfWeekAndDay
        mainView.timeOfDay.text = amPmClock
        
    }
}
