//
//  ButtonView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var backgroundColor: Color
    var textColor: Color
    var width: CGFloat
    var height: CGFloat
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    var cornerRadius: CGFloat
    
    var body: some View {
        Text(title)
            .frame(width: width, height: height)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: fontSize, weight: fontWeight))
            .clipShape(.rect(cornerRadius: cornerRadius))
    }
}

#Preview {
    ButtonView(
        title: "Change day time",
        backgroundColor: .white, textColor: .blue,
        width: 240, height: 48,
        fontSize: 24, fontWeight: .bold,
        cornerRadius: 8
    )
}
