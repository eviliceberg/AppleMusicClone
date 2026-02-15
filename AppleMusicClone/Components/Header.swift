//
//  Header.swift
//  AppleMusicClone
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import SwiftUI

struct Header: View {
    
    var animate: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Home")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Circle()
                        .fill(.white)
                        .frame(width: 32, height: 32)
                }
            }
            .padding(.horizontal, 16)
            .opacity(animate ? 0.0 : 1.0)
        }
        .animation(.spring(duration: 0.2), value: animate)
    }
}

#Preview {
    Header(animate: true)
}
