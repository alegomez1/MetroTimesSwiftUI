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
    @Published var NB_train3 = String()
    
    @Published var NB_Time1_LineID = String()
    @Published var NB_Time2_LineID = String()
    @Published var NB_Time3_LineID = String()
    
    @Published var SB_train1 = String()
    @Published var SB_train2 = String()
    @Published var SB_train3 = String()
    
    @Published var SB_Time1_LineID = String()
    @Published var SB_Time2_LineID = String()
    @Published var SB_Time3_LineID = String()
    
    init() {
        
        
        getDummyData()
//        getRemoteData()
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
                           let jsonStation = try decoder.decode(Station.self, from: data)
                           
                           var stationArray = [Station]()
                           
                           stationArray.append(jsonStation)
                           
                           stationInfo = stationArray
                           
                           stationName = jsonStation.RecordSet["Record"]!["StationName"]!
                           
                        NB_train1 = jsonStation.RecordSet["Record"]!["NB_Time1"]!
                        NB_train2 = jsonStation.RecordSet["Record"]!["NB_Time2"]!
                        NB_train3 = jsonStation.RecordSet["Record"]!["NB_Time3"]!
                        
                        NB_Time1_LineID = jsonStation.RecordSet["Record"]!["NB_Time1_LineID"]!
                        NB_Time2_LineID = jsonStation.RecordSet["Record"]!["NB_Time2_LineID"]!
                        NB_Time3_LineID = jsonStation.RecordSet["Record"]!["NB_Time3_LineID"]!
                            
                        SB_train1 = jsonStation.RecordSet["Record"]!["SB_Time1"]!
                        SB_train2 = jsonStation.RecordSet["Record"]!["SB_Time2"]!
                        SB_train3 = jsonStation.RecordSet["Record"]!["SB_Time3"]!
                            
                        SB_Time1_LineID = jsonStation.RecordSet["Record"]!["SB_Time1_LineID"]!
                        SB_Time2_LineID = jsonStation.RecordSet["Record"]!["SB_Time2_LineID"]!
                        SB_Time3_LineID = jsonStation.RecordSet["Record"]!["SB_Time3_LineID"]!
                           
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
            
            //Check if there's an error
            guard error == nil else {
                // There was an error
                return
            }
            
            do{
                
                //Handle the response
                let decoder = JSONDecoder()
                
                let stationData = try decoder.decode(Station.self, from: data!)
                
                DispatchQueue.main.async {

                var stationArray = [Station]()

                stationArray.append(stationData)

                self.stationInfo = stationArray
                    
                self.stationName = stationData.RecordSet["Record"]!["StationName"]!
                    
//                    if stationData.RecordSet["Record"]!["NB_Time1"] == nil {
//                        self.NB_train1 = "Not available"
//                    } else {
//                        self.NB_train1 = stationData.RecordSet["Record"]!["NB_Time1"]!
//                    }
//
//                    if stationData.RecordSet["Record"]!["NB_Time2"] == nil {
//                        self.NB_train2 = "Not available"
//                    } else {
//                        self.NB_train2 = stationData.RecordSet["Record"]!["NB_Time2"]!
//                    }
//
//                    if stationData.RecordSet["Record"]!["SB_Time1"] == nil {
//                        self.SB_train1 = "Not available"
//                    } else {
//                        self.SB_train1 = stationData.RecordSet["Record"]!["SB_Time1"]!
//                    }
//
//                    if stationData.RecordSet["Record"]!["SB_Time2"] == nil {
//                        self.SB_train2 = "Not available"
//                    } else {
//                        self.SB_train2 = stationData.RecordSet["Record"]!["SB_Time2"]!
//                    }
                    
                    
                    
                self.NB_train1 = stationData.RecordSet["Record"]!["NB_Time1"]!
                self.NB_train2 = stationData.RecordSet["Record"]!["NB_Time2"]!
                self.NB_train3 = stationData.RecordSet["Record"]!["NB_Time3"]!
                
                self.NB_Time1_LineID = stationData.RecordSet["Record"]!["NB_Time1_LineID"]!
                self.NB_Time2_LineID = stationData.RecordSet["Record"]!["NB_Time2_LineID"]!
                self.NB_Time3_LineID = stationData.RecordSet["Record"]!["NB_Time3_LineID"]!
                    
                self.SB_train1 = stationData.RecordSet["Record"]!["SB_Time1"]!
                self.SB_train2 = stationData.RecordSet["Record"]!["SB_Time2"]!
                self.SB_train3 = stationData.RecordSet["Record"]!["SB_Time3"]!
                    
                self.SB_Time1_LineID = stationData.RecordSet["Record"]!["SB_Time1_LineID"]!
                self.SB_Time2_LineID = stationData.RecordSet["Record"]!["SB_Time2_LineID"]!
                self.SB_Time3_LineID = stationData.RecordSet["Record"]!["SB_Time3_LineID"]!
                
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

            
    

