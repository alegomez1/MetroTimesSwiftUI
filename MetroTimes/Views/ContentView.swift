//
//  ContentView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = StationModel()
    
    var body: some View {
        
//        List(model.stationInfo) { station in
//
//            VStack{
//                Text("Hello")
//                Text(station.StationName)
//            }
        VStack {
            
            Text(model.stationInfo[0].RecordSet["Record"]!["SB_Time3"]!)
            
        }
        
//        Text(model().stationInfo)

        
//        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
