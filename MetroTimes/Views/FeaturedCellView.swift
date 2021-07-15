//
//  FeaturedCellView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/6/21.
//

import SwiftUI

struct FeaturedCellView: View {
    
    @EnvironmentObject var model:StationModel
    @Binding var passedID : String
    
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 15.0, style: .circular)
                .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                .frame(width: 350, height: 280)
    
                VStack(alignment: .leading) {
                    //MARK: Northbound
                    Text(passedID)
                    Text("Northbound Train")
                            .font(.system(.title2, design: .rounded))
                        .fontWeight(.semibold)
                    HStack{
                        Text("Arriving in: ")
                            .font(.system(.headline, design: .rounded))
                            .fontWeight(.medium)
                        
                        Text(model.NB_train1)
                    }
                    .padding(.top, 5)
                    
                    HStack{
                        Text("Time at arrival: ")
                            .font(.system(.headline, design: .rounded))
                            .fontWeight(.medium)
                        
                        Text(model.NB_Time1_Arrival)
                    }
                    .padding(.top, 5)
                    
                    HStack {
                        Text("Line ID:")
                            .font(.system(.headline, design: .rounded))
                            .fontWeight(.medium)
                        
                        if model.NB_Time1_LineID == "GRN" {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.red)
                        }
                    }
                    
                    //MARK: Southbound
                    Text("Southbound Train")
                            .font(.system(.title2, design: .rounded))
                            .fontWeight(.semibold)
                    HStack{
                        Text("Arriving in: ")
                            .font(.system(.headline, design: .rounded))
                            .fontWeight(.medium)
                        
                        Text(model.SB_train1)
                    }
                    .padding(.top, 5)
                    
                    HStack{
                        Text("Time at arrival: ")
                            .font(.system(.headline, design: .rounded))
                            .fontWeight(.medium)
                        
                        Text(model.SB_Time1_Arrival)
                    }
                    .padding(.top, 5)
                    
                    HStack {
                        Text("Line ID:")
                            .font(.system(.headline, design: .rounded))
                            .fontWeight(.medium)
                        
                        if model.SB_Time1_LineID == "GRN" {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.red)
                        }
                    }

                }
                .padding(.top, 5)
                .padding(.leading, 10)
            
        
        }
    }
}

//struct FeaturedCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedCellView(passedID: "TST")
//            .environmentObject(StationModel())
//    }
//}
