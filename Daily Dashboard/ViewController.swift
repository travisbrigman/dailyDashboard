//
//  ViewController.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 11/13/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var dateAndTime: UILabel!
    @IBOutlet weak var timeOfDay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.getCurrentDateAndTime), userInfo: nil, repeats: true)
        
        let randomBackgroundImage = URL(string: "https://source.unsplash.com/collection/3519679/1920x1080")!
        
        // Creating a session object with the default configuration.
        // You can read more about it here https://developer.apple.com/reference/foundation/urlsessionconfiguration
        let session = URLSession(configuration: .default)
        
        // Define a download task. The download task will download the contents of the URL as a Data object and then you can do what you wish with that data.
        let downloadPicTask = session.dataTask(with: randomBackgroundImage) { (data, response, error) in
            // The download has finished.
            if let e = error {
                print("Error downloading picture: \(e)")
            } else {
                // No errors found.
                // It would be weird if we didn't have a response, so check for that too.
                if let res = response as? HTTPURLResponse {
                    print("Downloaded picture with response code \(res.statusCode)")
                    if let imageData = data {
                        // Finally convert that Data into an image and do what you wish with it.
                        let image = UIImage(data: imageData)
                        // Do something with your image.
                        self.background.image = image
                        
                    } else {
                        print("Couldn't get image: Image is nil")
                    }
                } else {
                    print("Couldn't get response code for some reason")
                }
            }
        }
        
        downloadPicTask.resume()
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

//struct Unsplash: Decodable {
//    let results : UIImage
//}


//let jsonUrlString = "https://source.unsplash.com/1600x900/?nature,water/"
//guard let url = URL(string: jsonUrlString) else
//{ return }
//
//URLSession.shared.dataTask(with: url) { (data, response, err) in
//
//    do {
//        let request = try JSONDecoder().decode(Unsplash.self, from: data!)
//        print(request)
//    } catch {
//        print("an error has occurred")
//    }
//
//    }.resume()
