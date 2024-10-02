//
//  TitleView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS programming"
    var body: some View {
        HStack {
            GreetingTextView(subtitule: $subtitle)
            Spacer()
            RotatableCircleView()
        }
       
    }
}

#Preview {
    VStack{
        TitleView()
        Spacer()
    }.padding()
  
}
