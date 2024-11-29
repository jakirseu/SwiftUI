//
//  ContentView.swift
//  FullWidthBackground
//
//  Created by Jakir Hossain on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Makes the VStack fill the entire screen
        // Sets the background
//        .background(Color.blue)
        .background(
            
            Image("background")
                .resizable()
                .scaledToFit()
        )
        
        .ignoresSafeArea() // Ensures it extends beyond safe areas
        
    }
}

#Preview {
    ContentView()
}
