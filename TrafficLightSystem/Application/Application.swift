//
//  Application.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import SwiftUI

@main
struct Application: App {
    var body: some Scene {
        WindowGroup {
            SetupCarView(viewModel: .init())
        }
    }
}
