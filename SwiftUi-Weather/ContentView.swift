//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by Francesco Panico on 30/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                    WeatherDayView(dayOfWeek: "Cupertino, CA",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76,
                                   dayOfWeekSize: 32,
                                   imageFrame: 180,
                                   temperatureSize: 70)
                HStack{
                    WeatherDayView(dayOfWeek: "Tue", 
                                   imageName: "cloud.sun.fill",
                                   temperature: 76,
                                   dayOfWeekSize: 20,
                                   imageFrame: 40,
                                   temperatureSize: 30)
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var dayOfWeekSize: CGFloat
    var imageFrame: CGFloat
    var temperatureSize: CGFloat
    
    var body: some View {
        VStack(spacing: 10){
                Text(dayOfWeek)
                    .font(.system(size: dayOfWeekSize, weight: .medium))
                    .foregroundStyle(.linearGradient(colors: [Color.white],
                                                     startPoint: .topLeading,
                                                     endPoint: UnitPoint.bottomTrailing))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageFrame, height: imageFrame)
            
            Text("76°")
                .font(.system(size: temperatureSize, weight: .medium))
                .foregroundStyle(.linearGradient(colors: [Color.white],
                                                 startPoint: .topLeading,
                                                 endPoint: UnitPoint.bottomTrailing))
        }
    }
}
