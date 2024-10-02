//
//  TextView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import Foundation
import SwiftUI

struct TextView: View{
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .green,
        .blue,
        .pink,
        .red,
        .yellow,
        .brown,
        .black,
        Color(red:0 ,green: 159 / 255, blue: 163 / 255)
        
    ]
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPaid: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPaid ? .largeTitle : .body
    }
    var body: some View{
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5, x:10, y:10)
            .onTapGesture {
                withAnimation{
                    color = colors.randomElement()!
                }
            }
        
    }
}

#Preview {
    TextView(text: "Hello there!", color: .green )
}
