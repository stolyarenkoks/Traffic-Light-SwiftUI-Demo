//
//  Const.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import Foundation

// MARK: - AnimationTime Enum

enum AnimationTime: TimeInterval {
    case slowest = 1.0
    case extremelySlow = 0.9
    case verySlow = 0.8
    case quiteSlow = 0.7
    case slow = 0.6
    case `default` = 0.5
    case fast = 0.4
    case quiteFast = 0.3
    case veryFast = 0.2
    case extremelyFast = 0.1
    case fastest = 0.0
}

// MARK: - AlphaState Enum

enum AlphaState: CGFloat {
    case visible = 1.0
    case translucent = 0.5
    case invisible = 0.0
}

// MARK: - Const

enum Const {

    // MARK: - Scenes

    enum SetupCar {
        static let title = "Setup Your Car"
        static let subtitle = "🚗 Welcome to **Traffic Light System**!\n\n" +
        "🚀 Ready to hit the road?\n\n" +
        "🛣️ Tell us a bit about your ride so we can customize your driving experience."

        static let textFieldPlaceholder = "Enter your Car Model here..."

        static let startButtonFootnote = "🌟 Fasten your seatbelt and let's get started!"
        static let startButtonTitle = "Start Driving"
    }

    enum TrafficLight {
        static let title = "Traffic Light"
        static let subtitle = "🚥 Now, get ready for a visual treat as we sync your journey with a virtual traffic light! 🚦\n\n" +
        "Let the **%@** Experience begin! 🚀✨"

        static let description = "🔴 Red Light: Soak in the anticipation as you prepare for the adventure ahead.\n\n" +
        "🟡 Yellow Light: Gently accelerate, it's time to embrace the thrill!\n\n" +
        "🟢 Green Light: Full speed ahead! Your personalized RideVibe experience is in motion!"
    }
}
