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
//            Color(.blue)
            Color(#colorLiteral(red: 0.9393643737, green: 0.9337800741, blue: 0.9436568618, alpha: 1))
                .ignoresSafeArea()
            VStack(alignment: .center) {

                    ZStack {
                        Text("MetroTimes")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }

                VStack{
                    HStack {
                        Text("Northbound Trains")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    .padding(.leading, 10)
                    .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
                    ZStack{
                        RoundedRectangle(cornerRadius: 15.0, style: .circular)
                            .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                            .frame(width: 350, height: 150)
                
                        HStack() {
                            
                            VStack(alignment: .center){
                                Text("1st Train")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                HStack {
//                                    Text("ETA: ")
                                    Text(model.NB_train1)
                                }
                                HStack {
                                    Text("Line: ")
    //                                Text(model.NB_train1)
                                }
                            }
                            .padding()
                            
                       
                                VStack(alignment: .center){
                                    Text("2nd Train")
                                        .font(.headline)
                                        .padding(.bottom, 5)
                                    HStack {
//                                        Text("ETA: ")
                                        Text(model.NB_train2)
                                    }
                                    HStack {
                                        Text("Line: ")
        //                                Text(model.NB_train1)
                                    }
                                }
                                .padding()
                            
                            VStack(alignment: .center){
                                Text("3rd Train")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                HStack {
//                                        Text("ETA: ")
                                    Text(model.NB_train2)
                                }
                                HStack {
                                    Text("Line: ")
    //                                Text(model.NB_train1)
                                }
                            }
                            .padding()
                        }
                    }
                    
                    
                    HStack {
                        Text("Southbound Trains")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    .padding(.leading, 10)
                    .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
                    ZStack{
                        RoundedRectangle(cornerRadius: 15.0, style: .circular)
                            .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                            .frame(width: 350, height: 150)
                
                        HStack() {
                            
                            VStack(alignment: .center){
                                Text("1st Train")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                HStack {
//                                    Text("ETA: ")
                                    Text(model.NB_train1)
                                }
                                HStack {
                                    Text("Line: ")
    //                                Text(model.NB_train1)
                                }
                            }
                            .padding()
                            
                       
                                VStack(alignment: .center){
                                    Text("2nd Train")
                                        .font(.headline)
                                        .padding(.bottom, 5)
                                    HStack {
//                                        Text("ETA: ")
                                        Text(model.NB_train2)
                                    }
                                    HStack {
                                        Text("Line: ")
        //                                Text(model.NB_train1)
                                    }
                                }
                                .padding()
                            
                            VStack(alignment: .center){
                                Text("3rd Train")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                HStack {
//                                        Text("ETA: ")
                                    Text(model.NB_train2)
                                }
                                HStack {
                                    Text("Line: ")
    //                                Text(model.NB_train1)
                                }
                            }
                            .padding()
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
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
