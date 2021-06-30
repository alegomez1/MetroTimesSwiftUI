//
//  StationModel.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/28/21.
//https://sarunw.com/posts/how-to-initialize-stateobject-with-parameters-in-swiftui/

import Foundation

class StationModel: ObservableObject {
    
    @Published var stationInfo = [Station]()
    @Published var stationName = String()
    @Published var NB_train1 = String()
    @Published var NB_train2 = String()
    @Published var SB_train1 = String()
    @Published var SB_train2 = String()
    
    init() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")

        if pathString != nil {

            let url = URL(fileURLWithPath: pathString!)
            
            do {
                print("In first do statement")

                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let jsonStation = try decoder.decode(Station.self, from: data)
                    
                    var stationArray = [Station]()
                    
                    stationArray.append(jsonStation)
                    
                    stationInfo = stationArray
                    
                    stationName = jsonStation.RecordSet["Record"]!["StationName"]!
                    
                    NB_train1 = jsonStation.RecordSet["Record"]!["NB_Time1"]!
                    NB_train2 = jsonStation.RecordSet["Record"]!["NB_Time2"]!
                    
                    SB_train1 = jsonStation.RecordSet["Record"]!["SB_Time1"]!
                    SB_train2 = jsonStation.RecordSet["Record"]!["SB_Time2"]!
                    
                    print("Passed jsonStation")
                }
                catch {
                    print("failed at decoding",error)
                }
            }
            catch{
                print("failed at url", error)
            }
        }
    }
}
