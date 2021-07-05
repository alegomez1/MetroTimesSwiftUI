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
    
    @Published var showMorningStation = true
    @Published var showUpcomingTrains = true
    
    init() {
        
        
        getDummyData()
//        getRemoteData()
    }
    
    func getDummyData() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")

               if pathString != nil {

                   let url = URL(fileURLWithPath: pathString!)
                   
                   do {

                       let data = try Data(contentsOf: url)
                       
                       let decoder = JSONDecoder()
                       
                       do {
                           let jsonData = try decoder.decode(Station.self, from: data)
                           
                           var stationArray = [Station]()
                           
                           stationArray.append(jsonData)
                           
                           stationInfo = stationArray
                           
                           stationName = jsonData.RecordSet["Record"]!["StationName"]!!
                        
                        //NB Times
                        if jsonData.RecordSet["Record"]!["NB_Time1"]! == nil {
                            print("FOUND NIL")
                            NB_train1 = "N/A"
                        } else {
                            NB_train1 = jsonData.RecordSet["Record"]!["NB_Time1"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["NB_Time2"]! == nil {
                            print("FOUND NIL")
                            NB_train2 = "N/A"
                        } else {
                            NB_train2 = jsonData.RecordSet["Record"]!["NB_Time2"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["NB_Time3"]! == nil {
                            print("FOUND NIL")
                            NB_train3 = "N/A"
                        } else {
                            NB_train3 = jsonData.RecordSet["Record"]!["NB_Time3"]!!
                        }
                        
                        //NB Time Line ID
                        if jsonData.RecordSet["Record"]!["NB_Time1_LineID"]! == nil {
                            print("FOUND NIL")
                            NB_Time1_LineID = "N/A"
                        } else {
                            NB_Time1_LineID = jsonData.RecordSet["Record"]!["NB_Time1_LineID"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["NB_Time2_LineID"]! == nil {
                            print("FOUND NIL")
                            NB_Time2_LineID = "N/A"
                        } else {
                            NB_Time2_LineID = jsonData.RecordSet["Record"]!["NB_Time2_LineID"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["NB_Time3_LineID"]! == nil {
                            print("FOUND NIL")
                            NB_Time3_LineID = "N/A"
                        } else {
                            NB_Time3_LineID = jsonData.RecordSet["Record"]!["NB_Time3_LineID"]!!
                        }
                        
                        //SB Times
                        if jsonData.RecordSet["Record"]!["SB_Time1"]! == nil {
                            print("FOUND NIL")
                            SB_train1 = "N/A"
                        } else {
                            SB_train1 = jsonData.RecordSet["Record"]!["SB_Time1"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["SB_Time2"]! == nil {
                            print("FOUND NIL")
                            SB_train2 = "N/A"
                        } else {
                            SB_train2 = jsonData.RecordSet["Record"]!["SB_Time2"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["SB_Time3"]! == nil {
                            print("FOUND NIL")
                            SB_train3 = "N/A"
                        } else {
                            SB_train3 = jsonData.RecordSet["Record"]!["SB_Time3"]!!
                        }
                        
                        //SB Time Line ID
                        if jsonData.RecordSet["Record"]!["SB_Time1_LineID"]! == nil {
                            print("FOUND NIL")
                            SB_Time1_LineID = "N/A"
                        } else {
                            SB_Time1_LineID = jsonData.RecordSet["Record"]!["SB_Time1_LineID"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["SB_Time2_LineID"]! == nil {
                            print("FOUND NIL")
                            SB_Time2_LineID = "N/A"
                        } else {
                            SB_Time2_LineID = jsonData.RecordSet["Record"]!["SB_Time2_LineID"]!!
                        }
                        
                        if jsonData.RecordSet["Record"]!["SB_Time3_LineID"]! == nil {
                            print("FOUND NIL")
                            SB_Time3_LineID = "N/A"
                        } else {
                            SB_Time3_LineID = jsonData.RecordSet["Record"]!["SB_Time3_LineID"]!!
                        }
                        
                        
                        
//                        NB_train1 = jsonData.RecordSet["Record"]!["NB_Time1"]!!
//                        NB_train2 = jsonData.RecordSet["Record"]!["NB_Time2"]!!
//                        NB_train3 = jsonData.RecordSet["Record"]!["NB_Time3"]!!

//                        NB_Time1_LineID = jsonData.RecordSet["Record"]!["NB_Time1_LineID"]!!
//                        NB_Time2_LineID = jsonData.RecordSet["Record"]!["NB_Time2_LineID"]!!
//                        NB_Time3_LineID = jsonData.RecordSet["Record"]!["NB_Time3_LineID"]!!

//                        SB_train1 = jsonData.RecordSet["Record"]!["SB_Time1"]!!
//                        SB_train2 = jsonData.RecordSet["Record"]!["SB_Time2"]!!
//                        SB_train3 = jsonData.RecordSet["Record"]!["SB_Time3"]!!
//
//                        SB_Time1_LineID = jsonData.RecordSet["Record"]!["SB_Time1_LineID"]!!
//                        SB_Time2_LineID = jsonData.RecordSet["Record"]!["SB_Time2_LineID"]!!
//                        SB_Time3_LineID = jsonData.RecordSet["Record"]!["SB_Time3_LineID"]!!
                           
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
    
    func getRemoteData(stationID: String) {
        
        let urlString = "https://miami-transit-api.herokuapp.com/api/TrainTracker.json?StationID=\(stationID)"
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
                
                let jsonData = try decoder.decode(Station.self, from: data!)
                
                DispatchQueue.main.async {

                var stationArray = [Station]()

                stationArray.append(jsonData)

                self.stationInfo = stationArray
                    
                self.stationName = jsonData.RecordSet["Record"]!["StationName"]!!
                    
                    //NB Times
                    if jsonData.RecordSet["Record"]!["NB_Time1"]! == nil {
                        print("FOUND NIL at self.NB_train1")
                        self.NB_train1 = "N/A"
                    } else {
                        self.NB_train1 = jsonData.RecordSet["Record"]!["NB_Time1"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["NB_Time2"]! == nil {
                        print("FOUND NIL at self.NB_train2")
                        self.NB_train2 = "N/A"
                    } else {
                        self.NB_train2 = jsonData.RecordSet["Record"]!["NB_Time2"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["NB_Time3"]! == nil {
                        print("FOUND NIL at self.NB_train3")
                        self.NB_train3 = "N/A"
                    } else {
                        self.NB_train3 = jsonData.RecordSet["Record"]!["NB_Time3"]!!
                    }
                    
                    //NB Time Line ID
                    if jsonData.RecordSet["Record"]!["NB_Time1_LineID"]! == nil {
                        print("FOUND NIL at self.NB_Time1_LineID")
                        self.NB_Time1_LineID = "N/A"
                    } else {
                        self.NB_Time1_LineID = jsonData.RecordSet["Record"]!["NB_Time1_LineID"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["NB_Time2_LineID"]! == nil {
                        print("FOUND NIL at self.NB_Time2_LineID")
                        self.NB_Time2_LineID = "N/A"
                    } else {
                        self.NB_Time2_LineID = jsonData.RecordSet["Record"]!["NB_Time2_LineID"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["NB_Time3_LineID"]! == nil {
                        print("FOUND NIL at self.NB_Time3_LineID")
                        self.NB_Time3_LineID = "N/A"
                    } else {
                        self.NB_Time3_LineID = jsonData.RecordSet["Record"]!["NB_Time3_LineID"]!!
                    }
                    
                    //SB Times
                    if jsonData.RecordSet["Record"]!["SB_Time1"]! == nil {
                        print("FOUND NIL at self.SB_train1")
                        self.SB_train1 = "N/A"
                    } else {
                        self.SB_train1 = jsonData.RecordSet["Record"]!["SB_Time1"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["SB_Time2"]! == nil {
                        print("FOUND NIL at self.SB_train2")
                        self.SB_train2 = "N/A"
                    } else {
                        self.SB_train2 = jsonData.RecordSet["Record"]!["SB_Time2"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["SB_Time3"]! == nil {
                        print("FOUND NIL at self.SB_train3")
                        self.SB_train3 = "N/A"
                    } else {
                        self.SB_train3 = jsonData.RecordSet["Record"]!["SB_Time3"]!!
                    }
                    
                    //SB Time Line ID
                    if jsonData.RecordSet["Record"]!["SB_Time1_LineID"]! == nil {
                        print("FOUND NIL at self.SB_Time1_LineID")
                        self.SB_Time1_LineID = "N/A"
                    } else {
                        self.SB_Time1_LineID = jsonData.RecordSet["Record"]!["SB_Time1_LineID"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["SB_Time2_LineID"]! == nil {
                        print("FOUND NIL at self.SB_Time2_LineID")
                        self.SB_Time2_LineID = "N/A"
                    } else {
                        self.SB_Time2_LineID = jsonData.RecordSet["Record"]!["SB_Time2_LineID"]!!
                    }
                    
                    if jsonData.RecordSet["Record"]!["SB_Time3_LineID"]! == nil {
                        print("FOUND NIL at self.SB_Time3_LineID")
                        self.SB_Time3_LineID = "N/A"
                    } else {
                        self.SB_Time3_LineID = jsonData.RecordSet["Record"]!["SB_Time3_LineID"]!!
                    }
                    
                    
//
//                self.NB_train1 = jsonData.RecordSet["Record"]!["NB_Time1"]!!
//                self.NB_train2 = jsonData.RecordSet["Record"]!["NB_Time2"]!!
//                self.NB_train3 = jsonData.RecordSet["Record"]!["NB_Time3"]!!
//
//                self.NB_Time1_LineID = jsonData.RecordSet["Record"]!["NB_Time1_LineID"]!!
//                self.NB_Time2_LineID = jsonData.RecordSet["Record"]!["NB_Time2_LineID"]!!
//                self.NB_Time3_LineID = jsonData.RecordSet["Record"]!["NB_Time3_LineID"]!!
//
//                self.SB_train1 = jsonData.RecordSet["Record"]!["SB_Time1"]!!
//                self.SB_train2 = jsonData.RecordSet["Record"]!["SB_Time2"]!!
//                self.SB_train3 = jsonData.RecordSet["Record"]!["SB_Time3"]!!
//
//                self.SB_Time1_LineID = jsonData.RecordSet["Record"]!["SB_Time1_LineID"]!!
//                self.SB_Time2_LineID = jsonData.RecordSet["Record"]!["SB_Time2_LineID"]!!
//                self.SB_Time3_LineID = jsonData.RecordSet["Record"]!["SB_Time3_LineID"]!!
                
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
