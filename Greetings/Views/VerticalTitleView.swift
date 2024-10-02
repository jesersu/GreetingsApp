//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 1/10/24.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS programming"
    var body: some View {
        VStack(alignment: .leading) {
            GreetingTextView(subtitule: $subtitle)
       
            RotatableCircleView()
            Spacer()
        }.padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
