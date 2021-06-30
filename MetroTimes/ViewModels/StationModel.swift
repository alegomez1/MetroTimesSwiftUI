//
//  StationModel.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/28/21.
//

import Foundation

class StationModel: ObservableObject {
    
    @Published var stationInfo = [Station]()
    
    init() {
        print("Station Model Initialized")
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")

        if pathString != nil {

            let url = URL(fileURLWithPath: pathString!)
            
            do {
                print("In first do statement")

                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    var jsonStation = try decoder.decode(Station.self, from: data)
                    
//                    for index in 0..<jsonStation.count {
//                        jsonStation[index].id = UUID()
//                    }
                    print(jsonStation.RecordSet["Record"]!["SB_Time3"]!)
                    var stationArray = [Station]()
                    stationArray.append(jsonStation)
                    stationInfo = stationArray
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
