//
//  AllStationsView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/12/21.
//

import SwiftUI

struct FirstAllStationsSheetView: View {
    @EnvironmentObject var model:StationModel
    var body: some View {
        List {
            Text("First Sheet")
        Group {
            Button(action: {
                model.firstStation = "Allapattah"
                model.firstStationID = "ALP"
                model.selectedStationTest = "ALP"
                model.isFirstSheetShowing = false
//                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Allapattah")
            })
            Button(action: {
                model.firstStation = "Brickell"
                model.firstStationID = "BLK"
                model.selectedStationTest = "BLK"
                model.isFirstSheetShowing = false
//                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Brickell")
            })
            Button(action: {
                model.firstStation = "Brownsville"
                model.firstStationID = "BVL"
                model.selectedStationTest = "BVL"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Brownsville")
            })
            Button(action: {
                model.firstStation = "Civic Center"
                model.firstStationID = "CVC"
                model.selectedStationTest = "CVC"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Civic Center")
            })
            Button(action: {
                model.firstStation = "Coconut Grove"
                model.firstStationID = "CGV"
                model.selectedStationTest = "CGV"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Coconut Grove")
            })
            Button(action: {
                model.firstStation = "Culmer"
                model.firstStationID = "CUL"
                model.selectedStationTest = "CUL"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Culmer")
            })
            Button(action: {
                model.firstStation = "Dadeland North"
                model.firstStationID = "DLN"
                model.selectedStationTest = "DLN"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Dadeland North")
            })
            Button(action: {
                model.firstStation = "Dadeland South"
                model.firstStationID = "DLS"
                model.selectedStationTest = "DLS"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Dadeland South")
            })
            Button(action: {
                model.firstStation = "Douglas Road"
                model.firstStationID = "DRD"
                model.selectedStationTest = "DRD"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Douglas Road")
            })
                
            }
                
        Group {
                
            Button(action: {
                model.firstStation = "Dr. Martin Luther King, Jr."
                model.firstStationID = "MLK"
                model.selectedStationTest = "MLK"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Dr. Martin Luther King, Jr.")
            })
            Button(action: {
                model.firstStation = "Earlington Heights"
                model.firstStationID = "EHT"
                model.selectedStationTest = "EHT"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Earlington Heights")
            })
            Button(action: {
                model.firstStation = "Government Center"
                model.firstStationID = "GVT"
                model.selectedStationTest = "GVT"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Government Center")
            })
            Button(action: {
                model.firstStation = "Hialeah"
                model.firstStationID = "HIA"
                model.selectedStationTest = "HIA"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Hialeah")
            })
            Button(action: {
                model.firstStation = "Historic Overtown/Lyric Theatre"
                model.firstStationID = "OVT"
                model.selectedStationTest = "OVT"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Historic Overtown/Lyric Theatre")
            })
            Button(action: {
                model.firstStation = "Miami International Airport"
                model.firstStationID = "MIA"
                model.selectedStationTest = "MIA"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Miami International Airport")
            })
            }
            
        Group {
            Button(action: {
                model.firstStation = "Northside"
                model.firstStationID = "NSD"
                model.selectedStationTest = "NSD"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Northside")
            })
            Button(action: {
                model.firstStation = "Okeechobee"
                model.firstStationID = "OKE"
                model.selectedStationTest = "OKE"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Okeechobee")
            })
            Button(action: {
                model.firstStation = "Palmetto"
                model.firstStationID = "PAL"
                model.selectedStationTest = "PAL"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Palmetto")
            })
            Button(action: {
                model.firstStation = "Santa Clara"
                model.firstStationID = "SCL"
                model.selectedStationTest = "SCL"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Santa Clara")
            })
            Button(action: {
                model.firstStation = "South Miami"
                model.firstStationID = "SMI"
                model.selectedStationTest = "SMI"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("South Miami")
            })
            Button(action: {
                model.firstStation = "Tri-Rail"
                model.firstStationID = "ALP"
                model.selectedStationTest = "ALP"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Tri-Rail")
            })
            Button(action: {
                model.firstStation = "University"
                model.firstStationID = "UNV"
                model.selectedStationTest = "UNV"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("University")
            })
            Button(action: {
                model.firstStation = "Vizcaya"
                model.firstStationID = "VIZ"
                model.selectedStationTest = "VIZ"
                model.isFirstSheetShowing = false
                model.updateModel(stationID: model.firstStationID)
            }, label: {
                Text("Vizcaya")
            })
            }
        }
    }
}


struct FirstAllStationsView_Previews: PreviewProvider {
    static var previews: some View {
        FirstAllStationsSheetView()
            .environmentObject(StationModel())
    }
}
