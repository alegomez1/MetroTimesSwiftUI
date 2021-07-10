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
    
    
    
    
    
//    struct currentData {
//        @State var selectedStation = "DLN"
//    }
    
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
                                Image(systemName: "arrow.triangle.2.circlepath.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .foregroundColor(.black)
                            })
                            .padding(.trailing, 10)
    
                        }
                        .padding(.top, 10)
//                        .background(Color.white)
                        
                        Picker("Change Stations", selection: $selectedStation) {
                            Text("Dadeland North").tag("DLN")
                            Text("Brickell").tag("ALP")
                            
                            
            
                        }
                        .pickerStyle(SegmentedPickerStyle())
    //                    .padding(.top, 30)
                        .padding([.leading, .trailing], 30)
                        .onChange(of: selectedStation) {tag in model.updateModel(stationID: tag)}
                        
                        
                            
                        //MARK: Featured Info
                        VStack{
                            
                            //MARK: Swipe Tab View
                            
        //                    TabView {
                                
                                FeaturedCellView()
                                    .padding(.top, 20)
                                
                            
                            //MARK: Upcoming Trains
                            if model.showUpcomingTrains {
                                
                                Text("Upcoming Trains")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    

                            .padding(.top, 0)
                            .padding(.leading, 10)
                            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                            HStack {
                                //MARK: Northbound Trains
                                ZStack(alignment: .top){
                                    RoundedRectangle(cornerRadius: 15.0, style: .circular)
                                        .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                                        .frame(width: 175, height: 150)
                                    
                                    
                                    
                                    VStack(){
                                        HStack{
                                            Text("⬆️")
                                                .padding(.bottom, 2)
                                            Text("Northbound")
                                                .fontWeight(.semibold)
                                                .padding(.top, 10)
                                                .padding(.bottom, 10)
                                        }
        //                                .onTapGesture {
        //                                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
        //                                               impactHeavy.impactOccurred()
        //                                   }
           
                                        HStack{
                                            Text("2nd Train:")
                                                .font(.system(size: 16))
                                                .fontWeight(.semibold)
                                            Text(model.NB_train2)
                                                .font(.system(size: 16))

                                        }
                                        .padding(.leading, 10)
                                        .padding(.trailing, 15)
                                        .padding(.bottom, 10)
                                        .frame(width: 175, height: 30, alignment: .leading)
                                        
                                        HStack{
                                            Text("3rd Train:")
                                                .fontWeight(.semibold)
                                            Text(model.NB_train3)

                                        }
                                        .padding(.leading, 5)
                                        .frame(width: 175, height: 30, alignment: .leading)

                                    }
                                }
                                //MARK: Southbound Trains
                                ZStack(alignment: .top){
                                    RoundedRectangle(cornerRadius: 15.0, style: .circular)
                                        .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                                        .frame(width: 175, height: 150)
                                    
                                    VStack(){
                                        HStack{
                                            Text("⬇️")
                                                .padding(.bottom, 2)
                                            Text("Southbound")
                                                .fontWeight(.semibold)
                                                .padding(.top, 10)
                                                .padding(.bottom, 10)
                                        }
                                        HStack{
                                            Text("2nd Train:")
                                                .fontWeight(.semibold)
                                            Text(model.SB_train2)

                                        }
                                        .padding(.leading, 5)
                                        .padding(.bottom, 10)
                                        .frame(width: 175, height: 30, alignment: .leading)
                                        
                                        HStack{
                                            Text("3rd Train:")
                                                .fontWeight(.semibold)
                                            Text(model.SB_train3)

                                        }
                                        .padding(.leading, 5)
                                        .frame(width: 175, height: 30, alignment: .leading)

                                    }
                                }
                            }
                                
                            }
    //                        Spacer()
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
