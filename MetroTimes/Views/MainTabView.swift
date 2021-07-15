//
//  TabView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/5/21.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "tram")
                }
                
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
        .environmentObject(StationModel())
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
