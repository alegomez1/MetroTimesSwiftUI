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
                        Text("Dadeland Station")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding(.leading, 10)
                    .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
                    ZStack(alignment: .topLeading){
                        RoundedRectangle(cornerRadius: 15.0, style: .circular)
                            .shadow(color: Color(hue: 1.0, saturation: 0.178, brightness: 0.828, opacity: 0.499), radius: 5, x: 1, y: 2)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.016, brightness: 1.0))
                            .frame(width: 350, height: 150)
                
                        
                            VStack(alignment: .leading) {
                                HStack(alignment: .center) {
                                    Text("N.Bound ETA:")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text(model.NB_train1)
                                        .font(.title2)
//                                    Image(systemName: "tram.circle")
//                                        .resizable()
//                                        .frame(width: 35, height: 35, alignment: .center)
                                }
                                HStack {
                                    Text("Line ID:")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    
                                    if model.NB_Time1_LineID == "GRN" {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(.green)
                                    } else {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(.red)
                                    }
                                }
                                
                                HStack(alignment: .center) {
                                    Text("S.Bound ETA:")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text(model.NB_train1)
                                        .font(.title2)
//                                    Image(systemName: "tram.circle")
//                                        .resizable()
//                                        .frame(width: 35, height: 35, alignment: .center)
                                }
                                HStack {
                                    Text("Line ID:")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    
                                    if model.NB_Time1_LineID == "GRN" {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(.green)
                                    } else {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(.red)
                                    }
                                }

                            }
                            .padding(.top, 5)
                            .padding(.leading, 10)
                        
                    }
                    
                    
                    
                    HStack {
                        Text("Upcoming Trains")
                            .font(.title)
                            .fontWeight(.bold)
                            
                    }
                    .padding(.top, 25)
                    .padding(.leading, 10)
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                    HStack {
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
   
                                HStack{
                                    Text("2nd Train:")
                                        .fontWeight(.semibold)
                                    Text(model.NB_train1)

                                }
                                .padding(.leading, 5)
                                .padding(.bottom, 10)
                                .frame(width: 175, height: 30, alignment: .leading)
                                
                                HStack{
                                    Text("3rd Train:")
                                        .fontWeight(.semibold)
                                    Text(model.NB_train2)

                                }
                                .padding(.leading, 5)
                                .frame(width: 175, height: 30, alignment: .leading)

                            }
                        }
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
                                    Text(model.SB_train1)

                                }
                                .padding(.leading, 5)
                                .padding(.bottom, 10)
                                .frame(width: 175, height: 30, alignment: .leading)
                                
                                HStack{
                                    Text("3rd Train:")
                                        .fontWeight(.semibold)
                                    Text(model.SB_train2)

                                }
                                .padding(.leading, 5)
                                .frame(width: 175, height: 30, alignment: .leading)

                            }
                        }
                    }
                    
                    Button(action: {
                        model.getRemoteData()
                    }, label: {
                        Image(systemName: "arrow.triangle.2.circlepath.circle")
                            .resizable()
                            .frame(width: 75, height: 75, alignment: .center)
//                        Text("Refresh")
//                            .fontWeight(.bold)
//                            .font(.title3)
                            .foregroundColor(.green)
//                            .padding()
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 20)
//                                    .stroke(Color.purple, lineWidth: 5))
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
