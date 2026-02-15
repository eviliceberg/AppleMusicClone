//
//  ContentView.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                Home()
            }
            Tab("New", systemImage: "square.grid.2x2.fill") {
                VStack {
                    Image(systemName: "square.grid.2x2.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
            }
            Tab("Radio", systemImage: "dot.radiowaves.left.and.right") {
                VStack {
                    Image(systemName: "dot.radiowaves.left.and.right")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
            }
            Tab("Media", systemImage: "music.note.square.stack.fill") {
                Media()
            }
            Tab(role: .search) {
                EmptyView()
            }
        }
        .tint(.red)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
