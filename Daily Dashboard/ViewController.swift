//
//  ViewController.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 11/13/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var dateAndTime: UILabel!
    @IBOutlet weak var timeOfDay: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var weatherDescription: UILabel!
    @IBOutlet weak var weatherFont: UILabel!
    
    let locationManager = CLLocationManager()
    
    var theWeather = OpenWeatherAPI()
    var tempertaureConversion = TemperatureConversion()
    var dateAndTimeClass = DateAndTimeClass()
    var weatherFontDictionaryClass = FontIconDict()
    var theIconSelector = iconSelector()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get the location of the device
        locationManager.delegate = self as CLLocationManagerDelegate
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        //load the device's date and time to the text on the screen and fire a request every second.
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            
            var dayOfWeekAndDay : String = ""
            var amPmClock : String = ""
            
            dayOfWeekAndDay = self.dateAndTimeClass.getCurrentDateAndTime().0
            amPmClock = self.dateAndTimeClass.getCurrentDateAndTime().1
            // print("⏰", amPmClock, dayOfWeekAndDay,"📆")
            
            self.dateAndTime.text = dayOfWeekAndDay
            self.timeOfDay.text = amPmClock
            
        }
        
        //fires the above timer
        timer.fire()
        
        // calls the background image function
        getBackroundImage { (image) in
            DispatchQueue.main.async {
                self.background.image = image
            }
        }
                
        // maps the weather data to various things for display
        theWeather.getWeatherData(for: self.appleTVlocation()) { (currentWeather) in
            
            self.tempertaureConversion.hiTemp = currentWeather.main.hiTemp
            self.tempertaureConversion.loTemp = currentWeather.main.loTemp
            self.tempertaureConversion.currentTemp = currentWeather.main.temp
            self.tempertaureConversion.weatherID = currentWeather.weather[0].id
            self.tempertaureConversion.weatherDescription = currentWeather.weather[0].description
            self.tempertaureConversion.weatherIcon = currentWeather.weather[0].icon
            let weatherCharacter = self.theIconSelector.idToIconMatcher(id: self.tempertaureConversion.weatherID)

            DispatchQueue.main.async {
                self.weatherFont.text = weatherCharacter
               
                self.temperature.text = "\(String(Int(self.tempertaureConversion.convertedTemp().1.value.rounded(.toNearestOrEven))))ºF"
                self.weatherDescription.text = self.tempertaureConversion.weatherDescription

            }
        }
    }
}


