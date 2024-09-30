//
//  MeesageView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct MessageView: View {
    let greetings : [GreetingModel]
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
