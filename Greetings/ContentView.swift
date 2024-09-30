//
//  ContentView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct ContentView: View {
    var message: [GreetingModel] = [
        .init(title: "saludos totales", color: .myRed),
        .init(title: "que chuu", color: .myGray),
        .init(title: "mensaje prueba de q es posible", color: .myBlue),
        .init(title: "google vamos por ti", color: .myGreen),
        .init(title: "habla causa", color: .myYellow)
    ]
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack (alignment: .leading) {
                TitleView()
                Spacer()
                MessageView(greetings: message)
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
