//
//  TrafficLightType.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import Foundation

// MARK: - TrafficLightType

enum TrafficLightType: Int {
    case red
    case yellow
    case green

    var debugName: String {
        switch self {
        case .red:
            "Red Light"
        case .yellow:
            "Yellow Light"
        case .green:
            "Green Light"
        }
    }

    var duration: TimeInterval {
        switch self {
        case .red:
            4.0
        case .yellow:
            1.0
        case .green:
            4.0
        }
    }

    static let lightOrder: [Self] = [.red, .yellow, .green]
}
