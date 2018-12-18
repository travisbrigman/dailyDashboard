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
    
    let locationManager = CLLocationManager()
    
    var theWeather = OpenWeatherAPI()
    var tempertaureConversion = TemperatureConversion()
    var dateAndTimeClass = DateAndTime()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        // get the location of the device
        //locationManager.delegate = self as CLLocationManagerDelegate
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        dateAndTimeClass.getCurrentDateAndTime()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(dateAndTimeClass.getCurrentDateAndTime), userInfo: nil, repeats: true)
        

        
        theWeather.getWeatherData(for: self.appleTVlocation()) { (currentWeather) in
            
            self.tempertaureConversion.hiTemp = currentWeather.main.hiTemp
            self.tempertaureConversion.loTemp = currentWeather.main.loTemp
            self.tempertaureConversion.currentTemp = currentWeather.main.temp
            self.tempertaureConversion.weatherID = currentWeather.weather[0].id
            self.tempertaureConversion.weatherDescription = currentWeather.weather[0].description
            self.tempertaureConversion.weatherIcon = currentWeather.weather[0].icon
            
            self.tempertaureConversion.convertedTemp()
            
            DispatchQueue.main.async {
                self.temperature.text = "\(String(Int(self.tempertaureConversion.convertedTemp().1.value.rounded(.toNearestOrEven))))ºF"
            }
            print(currentWeather)
            
        }
        
    }
    
}
