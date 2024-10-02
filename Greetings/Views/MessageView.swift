//
//  MeesageView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct MessageView: View {
   
    var greetings: [GreetingModel] = [
        .init(title: LocalizedStringKey("saludos totales"), color: .myRed),
        .init(title: LocalizedStringKey("que chuu"), color: .myGray),
        .init(title: LocalizedStringKey("mensaje prueba de q es posible"), color: .myBlue),
        .init(title: LocalizedStringKey("google vamos por ti"), color: .myGreen),
        .init(title: LocalizedStringKey("habla causa"), color: .myYellow)
    ]
    var body: some View {
        VStack (alignment: .leading){
            ForEach(greetings){ greating in
                TextView(text: greating.title, color: greating.color)
            }
        }
    }
}

#Preview {
    MessageView(greetings: [.init(title: "prueba", color: .green)])
}
