//
//  Media.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import SwiftUI

struct Media: View {

    @State var hideHeader: Bool = false

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                List {
                    ForEach(0..<6) { _ in
                        HStack {
                            Image(systemName: "note")
                            Text("Hello")
                        }
                    }
                    .listRowSeparator(.visible, edges: .bottom)

                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach(0..<10) { _ in
                            Text("Grid Item")
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

                Header(title: "Media", animate: hideHeader)
            }
        }
    }
}

#Preview {
    Media()
        .preferredColorScheme(.dark)
}
