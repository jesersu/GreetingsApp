//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 1/10/24.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    @State private var isRotated: Bool = false
    var angle:Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.green, .blue, .yellow]), center: .center, angle: .degrees(0))
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient,lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation{
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
