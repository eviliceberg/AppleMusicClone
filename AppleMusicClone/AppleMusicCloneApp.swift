//
//  AppleMusicCloneApp.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import SwiftUI

@main
struct AppleMusicCloneApp: App {
    
    @StateObject var globalState: GlobalState = GlobalState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalState)
        }
    }
}
