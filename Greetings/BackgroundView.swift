//
//  BackgroundView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.bg,
                                .bg2],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(1)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
