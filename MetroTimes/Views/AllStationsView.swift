//
//  AllStationsView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/12/21.
//

import SwiftUI

struct AllStationsView: View {
    @EnvironmentObject var model:StationModel
    var body: some View {
        List {
            Group {
            Button(action: {
                model.firstStation = "Allapattah"
                model.firstStationID = "ALP"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Allapattah")
            })
            Button(action: {
                model.firstStation = "Brickell"
                model.firstStationID = "BLK"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Brickell")
            })
            Button(action: {
                model.firstStation = "Brownsville"
                model.firstStationID = "BVL"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Brownsville")
            })
            Button(action: {
                model.firstStation = "Civic Center"
                model.firstStationID = "CVC"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Civic Center")
            })
            Button(action: {
                model.firstStation = "Coconut Grove"
                model.firstStationID = "CGV"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Coconut Grove")
            })
            Button(action: {
                model.firstStation = "Culmer"
                model.firstStationID = "CUL"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Culmer")
            })
            Button(action: {
                model.firstStation = "Dadeland North"
                model.firstStationID = "DLN"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Dadeland North")
            })
            Button(action: {
                model.firstStation = "Dadeland South"
                model.firstStationID = "DLS"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Dadeland South")
            })
            Button(action: {
                model.firstStation = "Douglas Road"
                model.firstStationID = "DRD"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Douglas Road")
            })
                
            }
                
            Group {
                
            Button(action: {
                model.firstStation = "Dr. Martin Luther King, Jr."
                model.firstStationID = "MLK"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Dr. Martin Luther King, Jr.")
            })
            Button(action: {
                model.firstStation = "Earlington Heights"
                model.firstStationID = "EHT"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Earlington Heights")
            })
            Button(action: {
                model.firstStation = "Government Center"
                model.firstStationID = "GVT"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Government Center")
            })
            Button(action: {
                model.firstStation = "Hialeah"
                model.firstStationID = "HIA"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Hialeah")
            })
            Button(action: {
                model.firstStation = "Historic Overtown/Lyric Theatre"
                model.firstStationID = "OVT"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Historic Overtown/Lyric Theatre")
            })
            Button(action: {
                model.firstStation = "Miami International Airport"
                model.firstStationID = "MIA"
                model.isShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Miami International Airport")
            })
            }
            
            Group {
                            Button(action: {
                                model.firstStation = "Northside"
                                model.firstStationID = "NSD"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("Northside")
                            })
                            Button(action: {
                                model.firstStation = "Okeechobee"
                                model.firstStationID = "OKE"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("Okeechobee")
                            })
                            Button(action: {
                                model.firstStation = "Palmetto"
                                model.firstStationID = "PAL"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("Palmetto")
                            })
                            Button(action: {
                                model.firstStation = "Santa Clara"
                                model.firstStationID = "SCL"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("Santa Clara")
                            })
                            Button(action: {
                                model.firstStation = "South Miami"
                                model.firstStationID = "SMI"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("South Miami")
                            })
                            Button(action: {
                                model.firstStation = "Tri-Rail"
                                model.firstStationID = "ALP"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("Tri-Rail")
                            })
                            Button(action: {
                                model.firstStation = "University"
                                model.firstStationID = "UNV"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("University")
                            })
                            Button(action: {
                                model.firstStation = "Vizcaya"
                                model.firstStationID = "VIZ"
                                model.isShowing = false
                                model.updateModel(stationID: model.firstStationID)
                            }, label: {
                                Text("Vizcaya")
                            })
            }
        }
    }
}


struct AllStationsView_Previews: PreviewProvider {
    static var previews: some View {
        AllStationsView()
            .environmentObject(StationModel())
    }
}
