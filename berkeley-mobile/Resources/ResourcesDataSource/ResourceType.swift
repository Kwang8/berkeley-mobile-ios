//
//  ResourceType.swift
//  berkeley-mobile
//
//  Created by Kevin Hu on 12/5/20.
//  Copyright © 2020 ASUC OCTO. All rights reserved.
//

import Foundation
import UIKit

enum ResourceType: String {

    case health = "Health"
    case finances = "Finances"
    case legal = "Legal"
    case basicNeeds = "Basic Needs"
    case admin = "Admin"

    var color: UIColor {
        switch self {
        case .health:
            return Color.Resource.health
        case .finances:
            return Color.Resource.finances
        case .legal:
            return Color.Resource.legal
        case .basicNeeds:
            return Color.Resource.basicNeeds
        case .admin:
            return Color.Resource.admin
        }
    }

}