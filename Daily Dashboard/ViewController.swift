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
    
    let locationManager = CLLocationManager()

    var theWeather = OpenWeatherAPI()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.getCurrentDateAndTime), userInfo: nil, repeats: true)
  
        // Loads a big beautiful background image in the app
        
        let randomBackgroundImage = URL(string: "https://source.unsplash.com/collection/3519679/1920x1080")!
        let session = URLSession(configuration: .default)
        let downloadPicTask = session.dataTask(with: randomBackgroundImage) { (data, response, error) in
            // The download has finished.
            if let e = error {
                print("Error downloading picture: \(e)")
            } else {
                // No errors found.
                if let res = response as? HTTPURLResponse {
                    print("Downloaded picture with response code \(res.statusCode)")
                    if let imageData = data {
                        let image = UIImage(data: imageData)
                        DispatchQueue.main.async {
                            self.background.image = image
                        }
                    } else {
                        print("Couldn't get image: Image is nil")
                    }
                } else {
                    print("Couldn't get response code for some reason")
                }
            }
        }
        downloadPicTask.resume()
        
        // get the location of the device
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        theWeather.getWeatherData { (currentWeather) in
            print(currentWeather)
        }
    }
    
    @objc func getCurrentDateAndTime() {
        let formatter = DateFormatter()
        let timeFormatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        timeFormatter.dateFormat = "h:mm a"
        let dayOfWeekAndDay = formatter.string(from: Date())
        let amPmClock = timeFormatter.string(from: Date())
        dateAndTime.text = dayOfWeekAndDay
        timeOfDay.text = amPmClock
        
    }
    
}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lat = locations.last?.coordinate.latitude, let long = locations.last?.coordinate.longitude {
            print("latitude: \(lat), longitude \(long)")
            lookUpCurrentLocation { geoLoc in
                print(geoLoc?.locality ?? "unknown Geo location")
            }
        } else {
            print("No coordinates")
        }
        print("🌎\(locations)")
    }
    
    func appleTVlocation() -> (Double, Double) {
        return (locationManager.location?.coordinate.latitude ?? 0.0 , locationManager.location?.coordinate.longitude ?? 0.0)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("😱location manager error: \(error)")
    }
    
    
    func lookUpCurrentLocation(completionHandler: @escaping (CLPlacemark?) -> Void ) {
        // Use the last reported location.
        if let lastLocation = self.locationManager.location {
            let geocoder = CLGeocoder()
            
            // Look up the location and pass it to the completion handler
            geocoder.reverseGeocodeLocation(lastLocation, completionHandler: { (placemarks, error) in
                if error == nil {
                    let firstLocation = placemarks?[0]
                    completionHandler(firstLocation)
                }
                else {
                    // An error occurred during geocoding.
                    completionHandler(nil)
                }
            })
        }
        else {
            // No location was available.
            completionHandler(nil)
        }
    }
}
