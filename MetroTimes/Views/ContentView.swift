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
        

        ZStack {
            VStack {
                Text(model.stationName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    
                VStack{
                    Text("Northbound Trains")
                        .font(.title3)
                        .fontWeight(.semibold)
                    HStack() {
                        Text(model.NB_train1)
                        Text(model.NB_train2)
                    }
                }
                VStack{
                    Text("Southbound Trains")
                        .font(.title3)
                        .fontWeight(.semibold)
                    HStack() {
                        Text(model.SB_train1)
                        Text(model.SB_train2)
                    }
                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
