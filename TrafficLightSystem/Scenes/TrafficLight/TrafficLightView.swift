//
//  TrafficLightView.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import SwiftUI

// MARK: - TrafficLightView

struct TrafficLightView: View {

    // MARK: - Private Properties

    @ObservedObject private var viewModel: ViewModel

    // MARK: - Init

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    // MARK: - Body

    var body: some View {
        NavigationStack {
            VStack(spacing: 32.0) {
                Text(.init(viewModel.subtitle))

                AnimatedTrafficLightView()

                Text(viewModel.description)
            }
            .padding()
            .background(Color(uiColor: .systemGray6))
            .navigationTitle(viewModel.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Preview

#Preview {
    TrafficLightView(viewModel: .init(carModelName: "Audi S3"))
}
