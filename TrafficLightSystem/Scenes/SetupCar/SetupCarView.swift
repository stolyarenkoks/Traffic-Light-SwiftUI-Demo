//
//  SetupCarView.swift
//  TrafficLightSystem
//
//  Created by Konstantin Stolyarenko on 30.11.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import SwiftUI

// MARK: - SetupCarView

struct SetupCarView: View {

    // MARK: - Private Properties

    @ObservedObject private var viewModel: ViewModel

    // MARK: - Init

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    // MARK: - Body

    var body: some View {
        NavigationStack {
            VStack {
                Text(.init(Const.SetupCar.subtitle))
                    .padding(.bottom, 32.0)

                textField()

                Spacer()

                startButton()
            }
            .padding()
            .background(Color(uiColor: .systemGray6))
            .navigationTitle(Const.SetupCar.title)
        }
    }

    // MARK: - Private Methods

    private func textField() -> some View {
        TextField(Const.SetupCar.textFieldPlaceholder,
                  text: $viewModel.carModelName)
        .font(.title2)
        .bold()
        .multilineTextAlignment(.center)

        .padding(32.0)
    }

    private func startButton() -> some View {
        VStack {
            Text(Const.SetupCar.startButtonFootnote)
                .padding(.bottom, 16.0)

            NavigationLink(destination: TrafficLightView(viewModel: .init(carModelName: viewModel.carModelName))) {
                Text(Const.SetupCar.startButtonTitle)
                    .frame(maxWidth: .infinity, minHeight: 50.0)
                    .foregroundStyle(.white)
                    .background(viewModel.isCarModelNameValid ? .blue : Color(uiColor: .systemGray2))
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
            }
            .disabled(!viewModel.isCarModelNameValid)
        }
    }
}

// MARK: - Preview

#Preview {
    SetupCarView(viewModel: .init())
}
