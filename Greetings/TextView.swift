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
    let color: Color
    
    var body: some View{
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5, x:10, y:10)
        
    }
}

#Preview {
    TextView(text: "Hello there!", color: .green )
}
