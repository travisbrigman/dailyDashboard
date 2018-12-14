//
//  Weather.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 11/15/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation
class OpenWeatherAPI {
   
    //    struct coordinates: Codable {
    //        let longitude: Double
    //        let latitude: Double
    //
    //        private enum CodingKeys: String, CodingKey {
    //            case longitude = "lon"
    //            case latitude = "lat"
    //        }
    //        private enum CoordsKeys: String, CodingKey {
    //            case cooridnates = "coord"
    //        }
    //        public init(from decoder: Decoder) throws{
    //            let coords = try decoder.container(keyedBy: CoordsKeys.self)
    //            let coordsValues = try coords.nestedContainer(keyedBy: CodingKeys.self, forKey: .cooridnates)
    //            longitude = try coordsValues.decode(Double.self, forKey: .longitude)
    //            latitude = try coordsValues.decode(Double.self, forKey: .latitude)
    //        }
    //    }
    //    struct weatherAPI: Codable {
    //        struct baseWeather: Codable {
    //            let id: Int
    //            struct main: Codable {
    //                let temp: Double
    //                let pressure: Int
    //            }
    //            let description: String
    //            let icon: String
    //        }
    //        let weather: [baseWeather]
    //    }
    
    //    struct main: Codable {
    //        let temp: Double
    //        let loTemp: Double
    //        let hiTemp: Double
    //
    //        private enum CodingKeys: String, CodingKey {
    //            case temp
    //            case loTemp = "temp_min"
    //            case hiTemp = "temp_max"
    //        }
    //    }
    
    
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
                
                //DispatchQueue.main.async {
                    print("🌤\(weatherConditions)🌦")
                    completion(weatherConditions)
                    
                //}
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
                
            }
            }.resume()
        
    }
    
}

struct WeatherAPI: Codable {
    struct Coord: Codable {
        let lon: Double
        let lat: Double
    }
    struct Weather: Codable {
        let id: Int
        let description: String
        let icon: String
    }
    struct Main: Codable {
        let temp: Double
        let loTemp: Double
        let hiTemp: Double
        
        private enum CodingKeys: String, CodingKey {
            case temp
            case loTemp = "temp_min"
            case hiTemp = "temp_max"
        }
    }
    let weather: [Weather]
    let main: Main
    let coord: Coord
}
