//
//  GreetingTextView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 30/09/24.
//

import SwiftUI

struct GreetingTextView: View {
    
    @Binding var subtitule : LocalizedStringKey //= LocalizedStringKey ("Exploring iOS programming")
    
    var subtitles: [LocalizedStringKey] = [
        "Exploring iOS programming",
        "building this app",
        "test are important",
        "i need a ring for my beauty women"
    ]
    
    var body: some View {
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
    }
}

#Preview {
    GreetingTextView(subtitule: .constant("Exploring iOS programming"))
}
