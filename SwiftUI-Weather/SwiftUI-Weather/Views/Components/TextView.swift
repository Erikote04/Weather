//
//  TextView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct TextView: View {
    var text: String
    var size: CGFloat
    var weight: Font.Weight
    
    var body: some View {
        Text(text)
            .font(.system(size: size, weight: weight))
            .foregroundStyle(.white)
    }
}

#Preview {
    TextView(
        text: "Cupertino, CA",
        size: 32,
        weight: .medium
    )
}
