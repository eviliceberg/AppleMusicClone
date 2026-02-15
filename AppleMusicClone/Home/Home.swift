//
//  Home.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import SwiftUI

struct Home: View {

    @State var offset: CGFloat = 0
    @State var hideHeader: Bool = false

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                List {
                    ForEach(0..<50) { _ in
                        HStack {
                            Image(systemName: "house")

                            Text("Hello")
                                .frame(maxWidth: .infinity)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .safeAreaInset(edge: .top, content: {
                    Color.clear.frame(height: 48)
                })
                .listStyle(.plain)
                .onScrollGeometryChange(for: CGFloat.self) { geo in
                    return geo.contentOffset.y
                } action: { _, newValue in
                    if newValue < -100 {
                        hideHeader = false
                    } else {
                        hideHeader = true
                    }
                }

                Header(title: "Home", animate: hideHeader)
            }
        }
    }
}

#Preview {
    ContentView()
}
