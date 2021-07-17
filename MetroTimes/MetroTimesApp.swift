//
//  MetroTimesApp.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/27/21.
//

import SwiftUI

@main
struct MetroTimesApp: App {
        @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        
        
            let saveAction: () -> Void
        
        WindowGroup {
            
            
            MainTabView()
                .onChange(of: scenePhase) {phase in
                if phase == .inactive {saveAction()}
                }
//                .onAppear{
//                    data.load()
//                }
        }
    }
}
