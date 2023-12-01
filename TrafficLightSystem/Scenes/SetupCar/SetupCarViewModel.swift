//
//  SetupCarViewModel.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import SwiftUI

// MARK: - SetupCarViewModel

extension SetupCarView {

    // MARK: - ViewModel

    @MainActor class ViewModel: ObservableObject {

        // MARK: - Internal Properties

        @Published var carModelName: String = ""

        var isCarModelNameValid: Bool {
            carModelName.count >= 3
        }
    }
}
