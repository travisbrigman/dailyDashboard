import UIKit




let dictionaries : [KeyValuePairs<String, String>] = [
[
        "day-cloudy-gusts":
        "\u{f000}" ,
        
        "day-cloudy-windy":
        "\u{f001}" ,
        
        "day-cloudy":
        "\u{f002}" ,
        
        "day-fog":
        "\u{f003}" ,
        
        "day-hail":
        "\u{f004}" ,
        
        "day-lightning":
        "\u{f005}" ,
        
        "day-rain-mix":
        "\u{f006}" ,
        
        "day-rain-wind":
        "\u{f007}" ,
        
        "day-rain":
        "\u{f008}" ,
        
        "day-showers":
        "\u{f009}" ,
        
        "day-snow":
        "\u{f00a}" ,
        
        "day-sprinkle":
        "\u{f00b}" ,
        
        "day-sunny-overcast":
        "\u{f00c}" ,
        
        "day-sunny":
        "\u{f00d}" ,
        
        "day-storm-showers":
        "\u{f00e}" ,
        
        "day-thunderstorm":
        "\u{f010}" ,
        
        "cloudy-gusts":
        "\u{f011}" ,
        
        "cloudy-windy":
        "\u{f012}" ,
        
        "cloudy":
        "\u{f013}" ,
        
        "fog":
        "\u{f014}" ,
        
        "hail":
        "\u{f015}" ,
        
        "lightning":
        "\u{f016}" ,
        
        "rain-mix":
        "\u{f017}" ,
        
        "rain-wind":
        "\u{f018}" ,
        
        "rain":
        "\u{f019}" ,
        
        "showers":
        "\u{f01a}" ,
        
        "snow":
        "\u{f01b}" ,
        
        "sprinkle":
        "\u{f01c}" ,
        
        "storm-showers":
        "\u{f01d}" ,
        
        "thunderstorm":
        "\u{f01e}" ,
        
        "windy":
        "\u{f021}" ,
        
        "night-alt-cloudy-gusts":
        "\u{f022}" ,
        
        "night-alt-cloudy-windy":
        "\u{f023}" ,
        
        "night-alt-hail":
        "\u{f024}" ,
        
        "night-alt-lightning":
        "\u{f025}" ,
        
        "night-alt-rain-mix":
        "\u{f026}" ,
        
        "night-alt-rain-wind":
        "\u{f027}" ,
        
        "night-alt-rain":
        "\u{f028}" ,
        
        "night-alt-showers":
        "\u{f029}" ,
        
        "night-alt-snow":
        "\u{f02a}" ,
        
        "night-alt-sprinkle":
        "\u{f02b}" ,
        
        "night-alt-storm-showers":
        "\u{f02c}" ,
        
        "night-alt-thunderstorm":
        "\u{f02d}" ,
        
        "night-clear":
        "\u{f02e}" ,
        
        "night-cloudy-gusts":
        "\u{f02f}" ,
        
        "night-cloudy-windy":
        "\u{f030}" ,
        
        "night-cloudy":
        "\u{f031}" ,
        
        "night-hail":
        "\u{f032}" ,
        
        "night-lightning":
        "\u{f033}" ,
        
        "night-rain-mix":
        "\u{f034}" ,
        
        "night-rain-wind":
        "\u{f035}" ,
        
        "night-rain":
        "\u{f036}" ,
        
        "night-showers":
        "\u{f037}" ,
        
        "night-snow":
        "\u{f038}" ,
        
        "night-sprinkle":
        "\u{f039}" ,
        
        "night-storm-showers":
        "\u{f03a}" ,
        
        "night-thunderstorm":
        "\u{f03b}" ,
        
        "celsius":
        "\u{f03c}" ,
        
        "cloud-down":
        "\u{f03d}" ,
        
        "cloud-refresh":
        "\u{f03e}" ,
        
        "cloud-up":
        "\u{f040}" ,
        
        "cloud":
        "\u{f041}" ,
        
        "degrees":
        "\u{f042}" ,
        
        "down-left":
        "\u{f043}" ,
        
        "down":
        "\u{f044}" ,
        
        "fahrenheit":
        "\u{f045}" ,
        
        "horizon-alt":
        "\u{f046}" ,
        
        "horizon":
        "\u{f047}" ,
        
        "left":
        "\u{f048}" ,
        
        "night-fog":
        "\u{f04a}" ,
        
        "refresh-alt":
        "\u{f04b}" ,
        
        "refresh":
        "\u{f04c}" ,
        
        "right":
        "\u{f04d}" ,
        
        "sprinkles":
        "\u{f04e}" ,
        
        "strong-wind":
        "\u{f050}" ,
        
        "sunrise":
        "\u{f051}" ,
        
        "sunset":
        "\u{f052}" ,
        
        "thermometer-exterior":
        "\u{f053}" ,
        
        "thermometer-internal":
        "\u{f054}" ,
        
        "thermometer":
        "\u{f055}" ,
        
        "tornado":
        "\u{f056}" ,
        
        "up-right":
        "\u{f057}" ,
        
        "up":
        "\u{f058}" ,
        
        "wind-west":
        "\u{f059}" ,
        
        "wind-south-west":
        "\u{f05a}" ,
        
        "wind-south-east":
        "\u{f05b}" ,
        
        "wind-south":
        "\u{f05c}" ,
        
        "wind-north-west":
        "\u{f05d}" ,
        
        "wind-north-east":
        "\u{f05e}" ,
        
        "wind-north":
        "\u{f060}" ,
        
        "wind-east":
        "\u{f061}" ,
        
        "smoke":
        "\u{f062}" ,
        
        "dust":
        "\u{f063}" ,
        
        "snow-wind":
        "\u{f064}" ,
        
        "day-snow-wind":
        "\u{f065}" ,
        
        "night-snow-wind":
        "\u{f066}" ,
        
        "night-alt-snow-wind":
        "\u{f067}" ,
        
        "day-sleet-storm":
        "\u{f068}" ,
        
        "night-sleet-storm":
        "\u{f069}" ,
        
        "night-alt-sleet-storm":
        "\u{f06a}" ,
        
        "day-snow-thunderstorm":
        "\u{f06b}" ,
        
        "night-snow-thunderstorm":
        "\u{f06c}" ,
        
        "night-alt-snow-thunderstorm":
        "\u{f06d}" ,
        
        "solar-eclipse":
        "\u{f06e}" ,
        
        "lunar-eclipse":
        "\u{f070}" ,
        
        "meteor":
        "\u{f071}" ,
        
        "hot":
        "\u{f072}" ,
        
        "hurricane":
        "\u{f073}" ,
        
        "smog":
        "\u{f074}" ,
        
        "alien":
        "\u{f075}" ,
        
        "snowflake-cold":
        "\u{f076}" ,
        
        "stars":
        "\u{f077}" ,
        
        "night-partly-cloudy":
        "\u{f083}" ,
        
        "umbrella":
        "\u{f084}" ,
        
        "day-windy":
        "\u{f085}" ,
        
        "night-alt-cloudy":
        "\u{f086}" ,
        
        "up-left":
        "\u{f087}" ,
        
        "down-right":
        "\u{f088}" ,
        
        "time-12":
        "\u{f089}" ,
        
        "time-1":
        "\u{f08a}" ,
        
        "time-2":
        "\u{f08b}" ,
        
        "time-3":
        "\u{f08c}" ,
        
        "time-4":
        "\u{f08d}" ,
        
        "time-5":
        "\u{f08e}" ,
        
        "time-6":
        "\u{f08f}" ,
        
        "time-7":
        "\u{f090}" ,
        
        "time-8":
        "\u{f091}" ,
        
        "time-9":
        "\u{f092}" ,
        
        "time-10":
        "\u{f093}" ,
        
        "time-11":
        "\u{f094}" ,
        
        "day-sleet":
        "\u{f0b2}" ,
        
        "night-sleet":
        "\u{f0b3}" ,
        
        "night-alt-sleet":
        "\u{f0b4}" ,
        
        "sleet":
        "\u{f0b5}" ,
        
        "day-haze":
        "\u{f0b6}" ,
        
        "beafort-0":
        "\u{f0b7}" ,
        
        "beafort-1":
        "\u{f0b8}" ,
        
        "beafort-2":
        "\u{f0b9}" ,
        
        "beafort-3":
        "\u{f0ba}" ,
        
        "beafort-4":
        "\u{f0bb}" ,
        
        "beafort-5":
        "\u{f0bc}" ,
        
        "beafort-6":
        "\u{f0bd}" ,
        
        "beafort-7":
        "\u{f0be}" ,
        
        "beafort-8":
        "\u{f0bf}" ,
        
        "beafort-9":
        "\u{f0c0}" ,
        
        "beafort-10":
        "\u{f0c1}" ,
        
        "beafort-11":
        "\u{f0c2}" ,
        
        "beafort-12":
        "\u{f0c3}" ,
        
        "wind-default":
        "\u{f0b1}" ,
        "moon-new":
        "\u{f095}" ,
        
        "moon-waxing-cresent-1":
        "\u{f096}" ,
        
        "moon-waxing-cresent-2":
        "\u{f097}" ,
        
        "moon-waxing-cresent-3":
        "\u{f098}" ,
        
        "moon-waxing-cresent-4":
        "\u{f099}" ,
        
        "moon-waxing-cresent-5":
        "\u{f09a}" ,
        
        "moon-waxing-cresent-6":
        "\u{f09b}" ,
        
        "moon-first-quarter":
        "\u{f09c}" ,
        
        "moon-waxing-gibbous-1":
        "\u{f09d}" ,
        
        "moon-waxing-gibbous-2":
        "\u{f09e}" ,
        
        "moon-waxing-gibbous-3":
        "\u{f09f}" ,
        
        "moon-waxing-gibbous-4":
        "\u{f0a0}" ,
        
        "moon-waxing-gibbous-5":
        "\u{f0a1}" ,
        
        "moon-waxing-gibbous-6":
        "\u{f0a2}" ,
        
        "moon-full":
        "\u{f0a3}" ,
        
        "moon-waning-gibbous-1":
        "\u{f0a4}" ,
        
        "moon-waning-gibbous-2":
        "\u{f0a5}" ,
        
        "moon-waning-gibbous-3":
        "\u{f0a6}" ,
        
        "moon-waning-gibbous-4":
        "\u{f0a7}" ,
        
        "moon-waning-gibbous-5":
        "\u{f0a8}" ,
        
        "moon-waning-gibbous-6":
        "\u{f0a9}" ,
        
        "moon-3rd-quarter":
        "\u{f0aa}" ,
        
        "moon-waning-crescent-1":
        "\u{f0ab}" ,
        
        "moon-waning-crescent-2":
        "\u{f0ac}" ,
        
        "moon-waning-crescent-3":
        "\u{f0ad}" ,
        
        "moon-waning-crescent-4":
        "\u{f0ae}" ,
        
        "moon-waning-crescent-5":
        "\u{f0af}" ,
        
        "moon-waning-crescent-6":
        "\u{f0b0}"
]
]

for (i, dict) in dictionaries.enumerated() {
    var keys = Set<String>()
    for (key, _) in dict {
        if keys.contains(key) {
            print("dict[\(i)] contains duplicate key: \"\(key)\"")
        } else {
            keys.insert(key)
        }
    }
}
