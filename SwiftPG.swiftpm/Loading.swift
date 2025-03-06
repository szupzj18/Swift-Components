//
//  File.swift
//  SwiftPG
//
//  Created by Chris on 2025/3/6.
//

import SwiftUI

// loading animation
struct Loading : View {
    let characters = Array("LOADING") // split LOADING into arrays
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    @State private var currentIndex = 0
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(Array(characters.enumerated()), id: \.offset) { index, char in
                Text(String(char))
                    .font(.largeTitle)
                    .foregroundStyle(index == currentIndex ? .green : .black)
                    .animation(.easeInOut, value: currentIndex)
            }
        }
        .onReceive(timer) { _ in
            currentIndex = (currentIndex + 1) % characters.count
        }
    }
}

#Preview {
    Loading()
}
