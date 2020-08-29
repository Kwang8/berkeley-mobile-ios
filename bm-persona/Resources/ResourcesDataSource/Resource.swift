//
//  ResourceEntry.swift
//  bm-persona
//
//  Created by Oscar Bjorkman on 2/24/20.
//  Copyright © 2020 RJ Pimentel. All rights reserved.
//

import Foundation
import UIKit

class Resource: SearchItem, HasLocation, HasOpenTimes {
    var icon: UIImage?
    
    static var nearbyDistance: Double = 10
    
    var searchName: String {
        return name
    }
    
    var location: (Double, Double) {
        return (latitude ?? 0, longitude ?? 0)
    }
    
    var locationName: String {
        return self.address ?? "Berkeley, CA"
    }
    
    var description: String {
        return self.desc
    }
    
    var latitude: Double?
    var longitude: Double?
    
    let name: String
    let address: String?
    let desc: String
    var weeklyHours: WeeklyHours?
    
    init(name: String, address: String?, latitude: Double?, longitude: Double?, description: String?, hours: WeeklyHours?) {
        self.name = name
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        self.desc = description ?? ""
        self.weeklyHours = hours
    }
}
