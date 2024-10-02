//
//  MainView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 2/10/24.
//

import SwiftUI
// portrait = Compact width, regular height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone : Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var isIPaid: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        if isPortraitPhone || isIPaid {
            GreetingTextView(subtitule: .constant("Exploring iOS programming"))
        }else {
            LandscapeGreetingsView()
        }
        
    }
}

#Preview {
    MainView()
}
