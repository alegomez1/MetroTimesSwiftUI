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
        
        
        

        VStack(alignment: .center) {
                ZStack {
//                    RoundedRectangle(cornerRadius: 25.0, style: .circular)
//                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                        .frame(width: 275, height: 70)
                    Text(model.stationName)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }

            VStack{
                Text("Northbound Trains")
                    .font(.title2)
                    .fontWeight(.semibold)
                ZStack{
                    RoundedRectangle(cornerRadius: 15.0, style: .circular)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.061, brightness: 0.91))
                        .frame(width: 350, height: 80)
            
                    HStack() {
                        VStack(alignment: .center){
                            Text("1st Train")
                                .font(.headline)
                                .padding(.bottom, 5)
                            Text(model.NB_train1)
                        }
                        .padding(.trailing, 55)
                        
                        VStack(alignment: .center){
                            Text("2nd Train")
                                .font(.headline)
                                .padding(.bottom, 5)
                            Text(model.NB_train2)
                        }
                        .padding(.leading, 55)
                    }
                }
                .padding(.bottom, 50)
                
                Text("Southbound Trains")
                    .font(.title2)
                    .fontWeight(.semibold)
                ZStack{
                    RoundedRectangle(cornerRadius: 15.0, style: .circular)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.061, brightness: 0.91))
                        .frame(width: 350, height: 80)
            
                    HStack() {
                        VStack(alignment: .center){
                            Text("1st Train")
                                .font(.headline)
                                .padding(.bottom, 5)
                            Text(model.SB_train1)
                        }
                        .padding(.trailing, 55)
                        
                        VStack(alignment: .center){
                            Text("2nd Train")
                                .font(.headline)
                                .padding(.bottom, 5)
                            Text(model.SB_train2)
                        }
                        .padding(.leading, 55)
                    }
                }
                
                Button(action: {
                    model.getRemoteData()
                }, label: {
                    Text("Refresh")
                        .fontWeight(.bold)
                        .font(.title3)
                        .foregroundColor(.purple)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.purple, lineWidth: 5))
                })
                .padding(.top, 100)

            }
            .padding(.top, 50)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.top)
            
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
