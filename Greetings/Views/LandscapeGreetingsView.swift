//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 30/09/24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                Spacer()
                MessageView()
            
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
