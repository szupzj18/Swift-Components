//
//  CircleLoading.swift
//  SwiftPG
//
//  Created by Chris on 2025/3/7.
//

import SwiftUI

struct CircleLoading : View {
    @State private var isLoading = false
    
    var body : some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(
                AngularGradient(
                    gradient: Gradient(colors: [.blue, .blue.opacity(0)]),
                    center: .center
                ),
                style: StrokeStyle(lineWidth: 4, lineCap: .round)
            )
            .frame(width: 140, height: 140)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .animation(
                .linear(duration: 1)
                .repeatForever(autoreverses: false),
                value: isLoading
            )
            .onAppear {
                isLoading = true
            }
    }
}

#Preview {
    CircleLoading()
}
