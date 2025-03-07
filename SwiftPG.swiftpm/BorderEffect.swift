//
//  File 2.swift
//  SwiftPG
//
//  Created by Chris on 2025/3/7.
//

import SwiftUI

struct BorderEffect : View {
    @State var rotation: CGFloat = 0
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 200, height: 250)
                .foregroundStyle(.black)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 500, height: 150)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.01), .blue, .blue, .blue.opacity(0.01)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 19, style: .continuous)
                        .stroke(lineWidth: 4)
                        .frame(width: 196.5, height: 246.5)
                }
            Text("Card")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
        .onAppear {
            withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)){
                rotation = 360
            }
        }
    }
}

#Preview {
    BorderEffect()
}
