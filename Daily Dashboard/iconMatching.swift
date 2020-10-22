//
//  iconMatching.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 1/8/19.
//  Copyright © 2019 Travis Brigman. All rights reserved.
//

import Foundation

class iconSelector {
    var temperatureConversion = TemperatureConversion()
    
    func idToIconMatcher(id: Int) -> String {
        let icon = ""
        
        for items in matchUp {
            if items.key == temperatureConversion.weatherID {
               let iconDict = items.value
                for (_, value) in iconDict{
                    let icon = value
                    return icon
                }
            }
        }
        return icon
    }
    
    let matchUp = [
        200: ["day-storm-showers" : "\u{f00e}"], //Thunderstorm with light rain
        201: ["day-storm-showers" : "\u{f00e}"], //Thunderstorm with rain
        202: ["thunderstorm" : "\u{f01e}"], //Thunderstorm with heavy rain
        210: ["day-thunderstorm" : "\u{f010}"], //Light thunderstorm
        211: ["thunderstorm" : "\u{f01e}"], //Thunderstorm
        212: ["thunderstorm" : "\u{f01e}"], //Heavy Thunderstorm
        221: ["thunderstorm" : "\u{f01e}"], //Ragged Thunderstorm
        230: ["storm-showers" : "\u{f01d}"], //Thunderstorm with light drizzle
        231: ["storm-showers" : "\u{f01d}"], //Thunderstorm with drizzle
        232: ["storm-showers" : "\u{f01d}"], //Thunderstorm with heavy drizzle
        
        300: ["day-sprinkle": "\u{f00b}"], //Light Intensity Drizzle
        301: ["day-sprinkle": "\u{f00b}"], //Drizzle
        302: ["sprinkles": "\u{f04e}"], //Heavy Intensity Drizzle
        310: ["sprinkles": "\u{f04e}"], //light intensity drizzle rain
        311: ["sprinkle": "\u{f01c}"], //drizzle rain
        312: ["sprinkle": "\u{f01c}"], //heavy intensity drizzle rain
        313: ["day-rain-mix" : "\u{f006}"], //shower rain and drizzle
        314: ["day-showers" : "\u{f009}"], //heavy shower rain and drizzle
        321: ["day-rain-mix" : "\u{f006}"], //shower drizzle
        
        500: ["day-rain" : "\u{f008}"], //light rain
        501: ["day-rain" : "\u{f008}"], //moderate rain
        502: ["rain" : "\u{f019}"], //heavy intensity rain
        503: ["rain" : "\u{f019}"], //very heavy rain
        504: ["rain-mix" : "\u{f017}"], //extreme rain
        511: ["day-hail" : "\u{f004}"], //freezing rain
        520: ["showers" : "\u{f01a}"], //light intensity shower rain
        521: ["day-showers" : "\u{f009}"], //shower rain
        522: ["day-storm-showers" : "\u{f00e}"], //heavy intensity shower rain
        531: ["day-rain-mix" : "\u{f006}"], //ragged shower rain
        
        600: ["day-snow" : "\u{f00a}"], //light snow
        601: ["snow" : "\u{f01b}"], //snow
        602: ["snow" : "\u{f01b}"], //heavy snow
        611: ["sleet" : "\u{f0b5}"], //sleet
        612: ["day-sleet-storm" : "\u{f068}"], //light shower sleet
        613: ["day-sleet-storm" : "\u{f068}"], //shower sleet
        615: ["day-rain-mix" : "\u{f006}"], //light rain and snow
        616: ["rain-mix" : "\u{f017}"], //rain and snow
        620: ["rain-mix" : "\u{f017}"], //light shower snow
        621: ["day-snow-wind" : "\u{f065}"], //shower snow
        622: ["day-snow-thunderstorm" : "\u{f06b}"], //heavy shower snow
        
        701: ["smog" : "\u{f074}"], //mist
        711: ["smoke" : "\u{f062}"], //smoke
        721: ["day-haze" : "\u{f0b6}"], //haze
        731: ["dust" : "\u{f063}"], //sand/dust whirls
        741: ["day-fog" : "\u{f003}"], //fog
        751: ["dust" : "\u{f063}"], //sand
        761: ["dust" : "\u{f063}"], //dust
        762: ["meteor" : "\u{f071}"], //volcanic ash
        771: ["day-sleet-storm" : "\u{f068}"], //squalls
        781: ["tornado" : "\u{f056}"], //tornados
        
        800: ["day-sunny" : "\u{f00d}"], //clear sky
        801: ["cloud" : "\u{f041}"], //few clouds 11-25%
        802: ["cloudy" : "\u{f013}"], //scattered clouds 25-50%
        803: ["cloudy" : "\u{f013}"], //broken clouds 51-84%
        804: ["cloudy" : "\u{f013}"], //overcast clouds 85-100%
    
    ]
    
}

