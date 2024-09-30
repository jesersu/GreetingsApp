//
//  TitleView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    @State private var isRotated: Bool = false
    var angle:Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    @State var subtitule = "Exploring iOS programming"
    
    var subtitles = [
        "Exploring iOS programming",
        "buildin this app",
        "test are important",
        "i need aring for my beaty women"
    ]
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.green, .blue, .yellow]), center: .center, angle: .degrees(0))
    }
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitule)
                    .font(.headline)
                    .fontWeight(.thin)
            }.onTapGesture {
                subtitule = subtitles.randomElement()!
            }
            
            
            Spacer()
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
}

#Preview {
    VStack{
        TitleView()
        Spacer()
    }.padding()
  
}
