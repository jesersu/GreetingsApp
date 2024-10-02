//
//  ContentView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack (alignment: .leading) {
                TitleView()
                Spacer()
                MessageView()
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
