//
//  Weather.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 11/15/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation

struct coordinates: Codable {
    let longitude: Double
    let latitude: Double
    
    private enum CodingKeys: String, CodingKey {
        case longitude = "lon"
        case latitude = "lat"
    }
}

struct weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct main: Codable {
    let temp: Double
    let loTemp: Double
    let hiTemp: Double
    
    private enum CodingKeys: String, CodingKey {
        case temp = "temp"
        case loTemp = "temp_min"
        case hiTemp = "temp_max"
    }
}


func getWeatherData() {
    let jsonUrlString = "api.openweathermap.org/data/2.5/weather?lat=55.755786&lon=37.617633&APPID=8b29a4bca59654d89101420102680ded"
    guard let url = URL(string: jsonUrlString) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, response, err) in
        if let err = err {
            print("the following error occurred:", err)
            return
        }
        
        guard let data = data else { return }
        
        do {
            let gpsCoordinates = try JSONDecoder().decode(coordinates.self, from: data)
            let weatherConditions = try JSONDecoder().decode(weather.self, from: data)
            print("📡\(gpsCoordinates)📡")
            print("🌤\(weatherConditions)🌦")
            
        } catch let jsonErr {
            print("Error serializing json:", jsonErr)
        }
        }.resume()
}

