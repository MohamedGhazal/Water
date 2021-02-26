//
//  ContentView.swift
//  Shared
//
//  Created by Mohamed Ghazal on 2021-02-15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        var n: Int = 1
        NavigationView {
            let date = ["June 32, 2021", "June 33, 2021","June 34, 2021"]
            VStack{
                Divider()
                HStack{
                    Button(
                        action: {n=0},
                        label: {
                        Image(systemName: "arrow.left.circle")
                    })
                    Text(date[n]).padding()
                    Button(
                        action: {
                        n = 3
                    }, label: {
                        Image(systemName: "arrow.right.circle")
                    })
                }.padding(.horizontal)
                Divider()
                
                HStack{
                    VStack{
                        Text("Intake")
                        GaugeBackground(progress: 100)
                        Divider().padding()
                        Text("Goal")
                        GaugeBackground(progress: 90, color1: Color.red, color2: Color.blue)
                        Divider().padding()
                        Text("Recommended")
                        GaugeBackground(progress: 13, color1: Color.yellow , color2: Color.red)
                    }.padding()
                    
                    Text("Animated bottle with sloshing water using gyroscope perhaps").frame(width: 125)
                        .padding()
            }
                Spacer()
            }
                .navigationTitle("Water")
            }
        }
    }

struct TrendsView: View {
    var body: some View {
        NavigationView {
            Text("Stats")
                .navigationTitle("Trends")
        }
    }
}


struct mainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "drop")
                    Text("Water")
                }
            TrendsView()
                .tabItem {
                    Image(systemName: "waveform.path.ecg")
                    Text("Trends")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
            .preferredColorScheme(.dark)
    }
}

