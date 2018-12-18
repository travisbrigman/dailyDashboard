//
//  Weather.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 11/15/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation
class OpenWeatherAPI {
    
    func getWeatherData(for appleTVlocation:(Double, Double), completion: @escaping (WeatherAPI) -> Void) {
        let lat = appleTVlocation.0
        let long = appleTVlocation.1
        let jsonUrlString = "http://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(long)&APPID=8b29a4bca59654d89101420102680ded"
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                print("the following error occurred:", err)
                return
            }
            
            guard let data = data else { return }
            
            do {
                
                let weatherConditions = try JSONDecoder().decode(WeatherAPI.self, from: data)
                
                    //print("🌤\(weatherConditions)🌦")
                    completion(weatherConditions)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
                
            }
            }.resume()
        
    }
    
}

