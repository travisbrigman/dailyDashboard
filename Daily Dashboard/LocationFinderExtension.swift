//
//  LocationFinderExtension.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 12/18/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation
import CoreLocation

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
        //print("🌎\(locations)")
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
