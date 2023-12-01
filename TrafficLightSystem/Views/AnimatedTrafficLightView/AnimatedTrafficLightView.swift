//
//  AnimatedTrafficLightView.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import SwiftUI

// MARK: - AnimatedTrafficLightView

struct AnimatedTrafficLightView: View {

    // MARK: - Private Properties

    @State private var currentLight: TrafficLightType = .red
    @State private var currentIndex: Int = .zero
    @State private var isReversed = false

    // MARK: - Body

    var body: some View {
        VStack(spacing: .zero) {
            VStack(spacing: 16.0) {
                LightBulbView(color: .red, isOn: currentLight == .red)
                LightBulbView(color: .yellow, isOn: currentLight == .yellow)
                LightBulbView(color: .green, isOn: currentLight == .green)
            }
            .padding(16.0)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            .overlay(
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .stroke(Color.black, lineWidth: 3)
            )
            .shadow(color: .gray, radius: 4)

            Rectangle()
                .frame(width: 20, height: 40)
                .foregroundColor(.black)
                .shadow(color: .gray, radius: 4)
        }
        .padding()
        .onAppear {
            animateTrafficLight()
        }
    }

    // MARK: - Private Methods

    private func animateTrafficLight() {
        let startTime = DispatchTime.now()
        DispatchQueue.main.asyncAfter(deadline: .now() + currentLight.duration) {
            currentIndex = isReversed ? currentIndex - 1 : currentIndex + 1

            if currentIndex == TrafficLightType.lightOrder.count || currentIndex == -1 {
                isReversed.toggle()
                currentIndex = isReversed ? TrafficLightType.lightOrder.count - 2 : 1
            }

            withAnimation {
                printLightDuration(startTime: startTime)
                currentLight = TrafficLightType(rawValue: currentIndex) ?? .red
            } completion: {
                animateTrafficLight()
            }
        }
    }

    private func printLightDuration(startTime: DispatchTime) {
        startTime.printDuration(actionDescription: currentLight.debugName)
    }
}

// MARK: - Preview

#Preview {
    AnimatedTrafficLightView()
}
