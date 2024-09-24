//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            TextView(text: dayOfWeek, size: 16, weight: .medium)
            ImageView(name: imageName, width: 48, height: 48)
            TextView(text: "\(temperature)°", size: 24, weight: .medium)
        }
    }
}

#Preview {
    WeatherDayView(
        dayOfWeek: "TUE",
        imageName: "cloud.sun.fill",
        temperature: 76
    )
}
