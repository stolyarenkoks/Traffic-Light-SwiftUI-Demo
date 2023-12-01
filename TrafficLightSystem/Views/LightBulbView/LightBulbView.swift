//
//  LightBulbView.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import SwiftUI

// MARK: - LightBulbView

struct LightBulbView: View {

    // MARK: - Internal Properties

    var color: Color
    var isOn: Bool

    // MARK: - Body

    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(isOn ? 1.0 : 0.2)
            .overlay(Circle().stroke(Color.black, lineWidth: 3))
            .shadow(color: isOn ? color.opacity(0.4) : .clear, radius: 20)
    }
}

// MARK: - Preview

#Preview {
    VStack {
        LightBulbView(color: .red, isOn: false)
        LightBulbView(color: .yellow, isOn: false)
        LightBulbView(color: .green, isOn: true)
    }
}
