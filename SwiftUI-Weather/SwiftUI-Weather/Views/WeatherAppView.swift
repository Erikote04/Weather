//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Erik Sebastian de Erice Jerez on 24/9/24.
//

import SwiftUI

struct WeatherAppView: View {
    @State private var isDarkModeOn = false
    
    var body: some View {
        ZStack {
            BackgroundGradientView(isDarkModeOn: $isDarkModeOn)
            
            VStack {
                TextView(text: "Cupertino, CA", size: 32, weight: .medium)
                    .padding()
                
                VStack(spacing: 8) {
                    ImageView(name: isDarkModeOn ? "moon.stars.fill" : "cloud.sun.fill", width: 180, height: 180)
                    TextView(text: "76º", size: 64, weight: .medium)
                }
                .padding(.bottom, 48)
                
                HStack(spacing: 24) {
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.sun.fill",
                        temperature: 74)
                    
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "sun.max.fill",
                        temperature: 88)
                    
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "wind.snow",
                        temperature: 55)
                    
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "sunset.fill",
                        temperature: 60)
                    
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "snow",
                        temperature: 25)
                }
                
                Spacer()
                
                Button {
                    isDarkModeOn.toggle()
                } label: {
                    ButtonView(
                        title: "Change day time",
                        backgroundColor: .white, textColor: .blue,
                        width: 240, height: 48,
                        fontSize: 24, fontWeight: .bold,
                        cornerRadius: 8
                    )
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    WeatherAppView()
}
