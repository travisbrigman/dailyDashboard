//
//  DataModel.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 12/18/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation

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
