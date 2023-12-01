//
//  Const.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import Foundation

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
