//
//  ContentView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/27/21.
//

import SwiftUI



struct DashboardView: View {
    
    @EnvironmentObject var model:StationModel
    @State var selectedStation = "DLN"
    
    var body: some View {
        
        // MARK: Top

            VStack(alignment: .leading) {
                        
                        HStack(alignment: .center) {
                            Text("Metro Times")
                                .font(.largeTitle)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    
                                .padding(.leading, 10)
    
                            Spacer()
    
                            //MARK: Refresh Button
                            Button(action: {
    
                                model.updateModel(stationID: selectedStation)
    
    
                                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                                    impactMed.impactOccurred()
                            }, label: {
//                                Image(systemName: "arrow.clockwise")
                                Image(systemName: "arrow.triangle.2.circlepath")
                                    .resizable()
                                    .frame(width: 35, height: 30, alignment: .center)
                                    .foregroundColor(.black)
                            })
                            .padding(.trailing, 10)
    
                        }
                        .padding(.top, 10)
//                        .background(Color.white)
                        
                Picker("Change Stations", selection: $model.selectedStationTest) {
                            Text(model.firstStation).tag(model.firstStationID)
                            Text(model.secondStation).tag(model.secondStationID)
            
                        }
                        .pickerStyle(SegmentedPickerStyle())
    //                    .padding(.top, 30)
                        .padding([.leading, .trailing], 30)
                .onChange(of: model.selectedStationTest) {tag in model.updateModel(stationID: tag)
                            
                            print("changed tag", tag)
                        }
                        
                        //MARK: Featured Info
                        VStack{
 
                                FeaturedCellView(passedID: $selectedStation)
                                    .padding(.top, 20)
                                
                            //MARK: Upcoming Trains
                            if model.showUpcomingTrains {
                                UpcomingTrainsView()
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.top)
                        
                    }
                    .background( Color(#colorLiteral(red: 0.9393643737, green: 0.9337800741, blue: 0.9436568618, alpha: 1))
                                .ignoresSafeArea())
            
        }
        
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(StationModel())
    }
}
