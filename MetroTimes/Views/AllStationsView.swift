//
//  AllStationsView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/12/21.
//

import SwiftUI

struct AllStationsView: View {
    @EnvironmentObject var model:StationModel
    var body: some View {
        List {
            Button(action: {
                model.firstStation = "Dadeland North"
                model.isShowing = false
            }, label: {
                Text("Dadeland North")
            })
            Button(action: {
                model.firstStation = "Brickell"
                model.isShowing = false
            }, label: {
                Text("Brickell")
            })
            Button(action: {
                model.firstStation = "Vizcaya"
                model.isShowing = false
            }, label: {
                Text("Vizcaya")
            })
        }
    }
}

struct AllStationsView_Previews: PreviewProvider {
    static var previews: some View {
        AllStationsView()
            .environmentObject(StationModel())
    }
}
