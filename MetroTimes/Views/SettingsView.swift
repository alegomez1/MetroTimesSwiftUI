//
//  SettingsView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/5/21.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var model:StationModel
    
    var body: some View {
        VStack{
            Text("Preferences")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
//            Toggle("Show Morning Station", isOn: $model.showMorningStation)
            Divider()
            Toggle("Show Upcoming Trains", isOn: $model.showUpcomingTrains)
            Divider()
            HStack{
                Button(action: {
                    model.isFirstSheetShowing = true
                }, label: {
                    Text("Change first station")
                    Spacer()
                    Text(model.firstStationID)
                })
                .foregroundColor(.black)
                .sheet(isPresented: $model.isFirstSheetShowing, content: {
                    FirstAllStationsSheetView()
                })
            }
            Divider()
            HStack{
                Button(action: {
                    model.isSecondSheetShowing = true
                }, label: {
                    Text("Change second station")
                    Spacer()
                    Text(model.secondStationID)
                })
                .foregroundColor(.black)
                .sheet(isPresented: $model.isSecondSheetShowing, content: {
                    SecondAllStationsSheetView()
                })
            }

            
            Spacer()
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(StationModel())
    }
}
