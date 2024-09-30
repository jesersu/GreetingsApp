//
//  TextView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import Foundation
import SwiftUI

struct TextView: View{
    
    let text: String
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
    
    var body: some View{
        Text(text)
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
