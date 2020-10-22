//
//  BackgroundImage.swift
//  Daily Dashboard
//
//  Created by Travis Brigman on 12/18/18.
//  Copyright © 2018 Travis Brigman. All rights reserved.
//

import Foundation
import UIKit

// Loads a big beautiful background image in the app

func getBackroundImage(completion: @escaping (UIImage) -> Void) {
    
    let randomBackgroundImage = URL(string: "https://source.unsplash.com/collection/3519679/1920x1080")!
    let session = URLSession(configuration: .default)
    let downloadPicTask = session.dataTask(with: randomBackgroundImage) { (data, response, error) in
        // The download has finished.
        if let e = error {
            print("Error downloading picture: \(e)")
        } else {
            // No errors found.
            if let res = response as? HTTPURLResponse {
                print("Downloaded picture with response code \(res.statusCode)📡")
                if let imageData = data {
                    if let image = UIImage(data: imageData){
                    completion(image)
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
}
