//
//  DispatchTime+Extensions.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import Foundation

// MARK: - DispatchTime extensions

extension DispatchTime {

    func printDuration(actionDescription: String) {
        let endTime = DispatchTime.now()
        let nanoTime = endTime.uptimeNanoseconds - uptimeNanoseconds // Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
        print("\(actionDescription) - \(timeInterval) seconds")
    }
}
