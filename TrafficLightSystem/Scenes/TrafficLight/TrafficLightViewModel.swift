//
//  TrafficLightViewModel.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - TrafficLightViewModel

extension TrafficLightView {

    // MARK: - ViewModel

    @MainActor class ViewModel: ObservableObject {

        // MARK: - Internal Properties

        var title: String {
            Const.TrafficLight.title
        }

        var subtitle: String {
            String(format: Const.TrafficLight.subtitle, carModelName.capitalized)
        }

        var description: String {
            Const.TrafficLight.description
        }

        // MARK: - Private Properties

        private let carModelName: String

        // MARK: - Init

        init(carModelName: String) {
            self.carModelName = carModelName
        }
    }
}
