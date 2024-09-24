//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
