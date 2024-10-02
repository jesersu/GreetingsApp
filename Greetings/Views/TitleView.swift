//
//  TitleView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI
import TipKit
struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS programming"
    private var greetingsTip = GreetingTip()
    var body: some View {
        HStack {
            GreetingTextView(subtitule: $subtitle)
                .popoverTip(greetingsTip)
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
