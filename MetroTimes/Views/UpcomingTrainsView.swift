//
//  UpcomingTrainsView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/10/21.
//

import SwiftUI



struct UpcomingTrainsView: View {
    
    @EnvironmentObject var model:StationModel
    
    
    var body: some View {
        

        VStack {
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
                            .frame(width: 175, height: 120)
                        
                        VStack(){
                            HStack{

                                Text("Northbound")
                                    .fontWeight(.semibold)
                                    .padding(.top, 10)
                                    .padding(.bottom, 10)
                                    .padding(.leading, 5)
//                                Spacer()
//                                Text("⬆️")
//                                    .padding(.bottom, 2)
//                                    .padding(.trailing, 5)
                            }
                            .frame(width: 175, alignment: .leading)

                            HStack{
                                Text("2nd Train:")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                Text(model.NB_train2)
                                    .font(.system(size: 14))

                            }
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .padding(.bottom, 10)
                            .frame(width: 175, height: 20, alignment: .leading)
                            
                            HStack{
                                Text("3rd Train:")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                Text(model.NB_train3)
                                    .font(.system(size: 14))

                            }
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .frame(width: 175, height: 20, alignment: .leading)

                    }

                }
                
                //MARK: Southbound Trains
                ZStack(alignment: .top){
                    RoundedRectangle(cornerRadius: 15.0, style: .circular)
                        .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                        .frame(width: 175, height: 120)

                    VStack(){
                        HStack{

                            Text("Southbound")
                                .fontWeight(.semibold)
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                                .padding(.leading, 5)
//                            Spacer()
//                            Text("⬇️")
//                                .padding(.bottom, 2)
//                                .padding(.trailing, 5)
                        }
                        .frame(width: 175, alignment: .leading)
                        HStack{
                            Text("2nd Train:")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            Text(model.SB_train2)
                                .font(.system(size: 14))

                        }
                        .padding(.leading, 5)
                        .padding(.bottom, 10)
                        .frame(width: 175, height: 20, alignment: .leading)

                        HStack{
                            Text("3rd Train:")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            Text(model.SB_train3)
                                .font(.system(size: 14))

                        }
                        .padding(.leading, 5)
                        .frame(width: 175, height: 20, alignment: .leading)

                    }
//                    .frame(alignment: .leading)
                }
            }
        }
            
        }
        
            }

struct UpcomingTrainsView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingTrainsView()
            .environmentObject(StationModel())
    }
}
