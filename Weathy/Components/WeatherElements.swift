//
//  WeatherElements.swift
//  Weathy
//
//  Created by Mert Durkaya on 27.11.2023.
//

import SwiftUI

struct WeatherElements: View {
    var minTemp: String
    var maxTemp: String
    var windSpeed: String
    var humidity: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Weather now")
                .bold().padding(.bottom)
            HStack {
                WeatherRow(logo: "thermometer.low", name: "Min Temp", value: "\(minTemp)°")
                Spacer()
                WeatherRow(logo: "thermometer.high", name: "Max Temp", value: "\(maxTemp)°")
            }
            
            HStack {
                WeatherRow(logo: "wind", name: "Wind Speed", value: "\(windSpeed)m/s")
                Spacer()
                WeatherRow(logo: "humidity", name: "Humidity", value: "\(humidity)%")
            }

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .padding(.bottom, 20)
        .foregroundColor(Color(hue: 0.660, saturation: 0.8, brightness: 0.354))
        .background(.white)
        .cornerRadius(20, corners: [.topLeft, .topRight])
    }
}

#Preview {
    WeatherElements(minTemp: "2", maxTemp: "8", windSpeed: "12", humidity: "20")
}
