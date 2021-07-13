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
            Button(action: {
                model.isShowing = true
            }, label: {
                Text("Change first station")
            })
            .sheet(isPresented: $model.isShowing, content: {
                AllStationsView()
            })
            
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
