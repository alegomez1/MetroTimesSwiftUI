//
//  StationModel.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/28/21.
//https://sarunw.com/posts/how-to-initialize-stateobject-with-parameters-in-swiftui/

import Foundation

class StationModel: ObservableObject {
    
    @Published var stationInfo = [RecordSet]()
    @Published var stationName = String()
    @Published var NB_train1 = String()
    @Published var NB_train2 = String()
    @Published var SB_train1 = String()
    @Published var SB_train2 = String()
    
    init() {
        
        
//        getDummyData()
        getRemoteData()
    }
    
    func getDummyData() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")

               if pathString != nil {

                   let url = URL(fileURLWithPath: pathString!)
                   
                   do {
                       print("In first do statement")

                       let data = try Data(contentsOf: url)
                       
                       let decoder = JSONDecoder()
                       
                       do {
                           let jsonStation = try decoder.decode(RecordSet.self, from: data)
                           
                           var stationArray = [RecordSet]()
                           
                           stationArray.append(jsonStation)
                           
                           stationInfo = stationArray
                           
                           stationName = jsonStation.RecordSet["Record"]!["StationName"]!
                           
                           NB_train1 = jsonStation.RecordSet["Record"]!["NB_Time1"]!
                           NB_train2 = jsonStation.RecordSet["Record"]!["NB_Time2"]!
                           
                           SB_train1 = jsonStation.RecordSet["Record"]!["SB_Time1"]!
                           SB_train2 = jsonStation.RecordSet["Record"]!["SB_Time2"]!
                           
                           print("Dummy data: Passed JSON decoding")
                       }
                       catch {
                           print("Failed at decoding",error)
                       }
                   }
                   catch{
                       print("Failed at url", error)
                   }
               }
           }
    
    func getRemoteData() {
        
        let urlString = "https://miami-transit-api.herokuapp.com/api/TrainTracker.json?StationID=DLN"
        let url = URL(string: urlString)
        
        guard url != nil else{
            return
        }
        
        let request = URLRequest(url: url!)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            print(data!)
            
            //Check if there's an error
            guard error == nil else {
                // There was an error
                return
            }
            do{
                print("Remote data: About to decode")
                //Handle the response
                let decoder = JSONDecoder()
                
                let stationData = try decoder.decode(RecordSet.self, from: data!)
                print(stationData.RecordSet["Record"]!["NB_Time1"]!)
                
                
                DispatchQueue.main.async {
                self.stationName = stationData.RecordSet["Record"]!["StationName"]!

                print("data:", stationData)

                var stationArray = [RecordSet]()

                stationArray.append(stationData)

                self.stationInfo = stationArray
                
                }
            }
            catch {
                //Couldn't parse JSON
                print("Remote data error:", error)
            }

        }
        //Kick off the data task
        dataTask.resume()
        

    }
    
    }
    
    

        
    
//
//
//
//        let url = URL(string: "https://miami-transit-api.herokuapp.com/api/TrainStations.json?StationID=DLN")
        
//        guard let url = URL(string: "https://miami-transit-api.herokuapp.com/api/TrainStations.json?StationID=DLN") else {return}
//                URLSession.shared.dataTask(with: url) { (data, res, error) in
////                    print("data:",data!)
//                    do {
//                        let decoder = JSONDecoder()
//
//                        let jsonStation = try decoder.decode(Station.self, from: data!)
////                        print("jsonStation:",jsonStation.RecordSet)
//
////                        var stationArray = [Station]()
////
////                        stationArray.append(jsonStation)
////
////                        self.stationInfo = stationArray
////
////                        self.stationName = jsonStation.RecordSet["Record"]!["StationName"]!
////
////                        self.NB_train1 = jsonStation.RecordSet["Record"]!["NB_Time1"]!
////                        self.NB_train2 = jsonStation.RecordSet["Record"]!["NB_Time2"]!
////
////                        self.SB_train1 = jsonStation.RecordSet["Record"]!["SB_Time1"]!
////                        self.SB_train2 = jsonStation.RecordSet["Record"]!["SB_Time2"]!
//                    } catch {
//                        print(error)
//                    }
//                }.resume()
    
//
//                 let jsonStation = try decoder.decode(Station.self, from: data)
//
//                 var stationArray = [Station]()
//
//                 stationArray.append(jsonStation)
//
//                 stationInfo = stationArray
//
//                 stationName = jsonStation.RecordSet["Record"]!["StationName"]!
//
//                 NB_train1 = jsonStation.RecordSet["Record"]!["NB_Time1"]!
//                 NB_train2 = jsonStation.RecordSet["Record"]!["NB_Time2"]!
//
//                 SB_train1 = jsonStation.RecordSet["Record"]!["SB_Time1"]!
//                 SB_train2 = jsonStation.RecordSet["Record"]!["SB_Time2"]!

            
    

