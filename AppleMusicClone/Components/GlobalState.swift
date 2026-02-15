//
//  GlobalState.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import Foundation
import Combine

final class GlobalState: ObservableObject {
    @Published var data: [String] = []
}
