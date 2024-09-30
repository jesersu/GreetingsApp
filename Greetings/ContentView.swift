//
//  ContentView.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 29/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Greetings!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(Color.purple)
                .background(Color.orange.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(color: .orange, radius: 5, x: 10, y: 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
