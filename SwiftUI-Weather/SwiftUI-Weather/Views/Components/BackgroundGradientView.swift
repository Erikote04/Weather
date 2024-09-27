//
//  BackgroundGradientView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct BackgroundGradientView: View {
    @Binding var isDarkModeOn: Bool
    
    var body: some View {
        LinearGradient(
            colors: [isDarkModeOn ? .black : .blue, isDarkModeOn ? .gray : Color("lightBlue")],
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradientView(isDarkModeOn: .constant(true))
}
