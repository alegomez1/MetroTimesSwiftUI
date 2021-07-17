//
//  TabView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/5/21.
//

import SwiftUI

struct MainTabView: View {
    
//    @Environment(\.scenePhase) private var scenePhase
//    let saveAction: () -> Void
    @ObservedObject private var data = StationData()
    @Environment(\.scenePhase) private var scenePhase
    let saveAction: () -> Void
    
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
//        .onChange(of: scenePhase) {phase in
//        if phase == .inactive {saveAction()}
//        }
        .environmentObject(StationModel())
    }
    
}

//struct TabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}
