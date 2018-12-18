//
//  TempConversion.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 12/18/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation

class TemperatureConversion {
    
    var hiTemp: Double = 0
    var loTemp: Double = 0
    var currentTemp: Double = 0
    var weatherID: Int = 0
    var weatherDescription: String = ""
    var weatherIcon: String = ""
    
    func convertedTemp() -> (Measurement<UnitTemperature>, Measurement<UnitTemperature>, Measurement<UnitTemperature>) {
        let tempKelvin = Measurement(value: currentTemp, unit: UnitTemperature.kelvin)
        print(tempKelvin)
        let tempFarenheit = tempKelvin.converted(to: UnitTemperature.fahrenheit)
        print(tempFarenheit)
        let tempCelsius = tempKelvin.converted(to: UnitTemperature.celsius)
        
        return (tempKelvin, tempFarenheit, tempCelsius)
    }
}
