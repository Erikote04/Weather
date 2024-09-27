//
//  ImageView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct ImageView: View {
    var name: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Image(systemName: name)
            .symbolRenderingMode(.multicolor)
            .resizable()
            .scaledToFit()
            .frame(width: width, height: height)
    }
}

#Preview {
    ImageView(
        name: "cloud.sun.fill",
        width: 180,
        height: 180
    )
}
