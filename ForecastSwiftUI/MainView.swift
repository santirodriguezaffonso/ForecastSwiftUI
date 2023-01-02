//
//  ContentView.swift
//  ForecastSwiftUI
//
//  Created by Santiago Rodriguez Affonso on 01/01/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color("LightBlue")], startPoint: .topLeading, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()

                VStack(alignment: .center, spacing: 0) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)

                    Text("22º")
                        .font(.system(size: 60, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 60)
                HStack(spacing: 30) {
                    WeatherDayView(weekDay: "MON", imageName: "sun.haze.fill", temperature: 24)
                    WeatherDayView(weekDay: "TUE", imageName: "cloud.fill", temperature: 18)
                    WeatherDayView(weekDay: "WED", imageName: "sun.max.fill", temperature: 34)
                    WeatherDayView(weekDay: "THU", imageName: "cloud.sun.fill", temperature: 24)
                    WeatherDayView(weekDay: "FRI", imageName: "cloud.rain.fill", temperature: 11)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct WeatherDayView: View {

    var weekDay: String
    var imageName: String
    var temperature: Int

    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text(weekDay)
                .font(.system(size: 20, weight: .semibold, design: .default))
                .foregroundColor(.white)

            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)º")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.white)

        }
    }
}
