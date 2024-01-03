//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by Francesco Panico on 30/12/23.
//

import SwiftUI

struct ContentView: View {
    
    // Static Variables
    @State private var isNight = false
    
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack{
                WeatherDayView(dayOfWeek: "Cupertino, CA",
                               imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                               temperature: 76,
                               dayOfWeekSize: 32,
                               imageFrame: 180,
                               temperatureSize: 70)
                
                .padding(.bottom, 40)
                
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76,
                                   dayOfWeekSize: 20,
                                   imageFrame: 40,
                                   temperatureSize: 30)
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "sun.max.fill",
                                   temperature: 88,
                                   dayOfWeekSize: 20,
                                   imageFrame: 40,
                                   temperatureSize: 30)
                    WeatherDayView(dayOfWeek: "Thu",
                                   imageName: "wind.snow",
                                   temperature: 55,
                                   dayOfWeekSize: 20,
                                   imageFrame: 40,
                                   temperatureSize: 30)
                    WeatherDayView(dayOfWeek: "Fri",
                                   imageName: "sunset.fill",
                                   temperature: 60,
                                   dayOfWeekSize: 20,
                                   imageFrame: 40,
                                   temperatureSize: 30)
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "snow",
                                   temperature: 25,
                                   dayOfWeekSize: 20,
                                   imageFrame: 40,
                                   temperatureSize: 30)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    ChangeDayTimeBtnView(title: "Change DayTime",
                                         textColor: .white,
                                         backgroundColor: .mint)
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
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.pink, .orange, .green)
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

struct BackgroundView: View {
    
    var isNight: Bool
    //var topColor: Color
    //var bottomColor: Color
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors:
//                                            [isNight ? .black : .blue,
//                                             isNight ? .gray : .lightBlue]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(isNight ? Color.gray .gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}
