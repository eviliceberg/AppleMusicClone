//
//  HomeViewModel.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import Foundation
import Combine

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var data: [String] = []

    enum Operation: String {
        case plus, minus, divide, multiply
    }

    func fetchData() async {

    }

    func calculator(num1: Double, num2: Double, operation: Operation) -> Double {
        switch operation {
        case .plus:
            return num1 + num2
        case .minus:
            return num1 - num2
        case .divide:
            return num1 / num2
        case .multiply:
            return num1 * num2
        }
    }
}
