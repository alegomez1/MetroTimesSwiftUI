//
//  AllStationsView.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/12/21.
//

import SwiftUI

struct SecondAllStationsSheetView: View {
    @EnvironmentObject var model:StationModel
    var body: some View {
    List {
        Text("Second Sheet")
        Group {
            Button(action: {
                model.secondStation = "Allapattah"
                model.secondStationID = "ALP"
                model.selectedStationTest = "ALP"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Allapattah")
            })
            Button(action: {
                model.secondStation = "Brickell"
                model.secondStationID = "BLK"
                model.selectedStationTest = "BLK"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Brickell")
            })
            Button(action: {
                model.secondStation = "Brownsville"
                model.secondStationID = "BVL"
                model.selectedStationTest = "BVL"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Brownsville")
            })
            Button(action: {
                model.secondStation = "Civic Center"
                model.secondStationID = "CVC"
                model.selectedStationTest = "CVC"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Civic Center")
            })
            Button(action: {
                model.secondStation = "Coconut Grove"
                model.secondStationID = "CGV"
                model.selectedStationTest = "CGV"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Coconut Grove")
            })
            Button(action: {
                model.secondStation = "Culmer"
                model.secondStationID = "CUL"
                model.selectedStationTest = "CUL"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Culmer")
            })
            Button(action: {
                model.secondStation = "Dadeland North"
                model.secondStationID = "DLN"
                model.selectedStationTest = "DLN"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Dadeland North")
            })
            Button(action: {
                model.secondStation = "Dadeland South"
                model.secondStationID = "DLS"
                model.selectedStationTest = "DLS"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Dadeland South")
            })
            Button(action: {
                model.secondStation = "Douglas Road"
                model.secondStationID = "DRD"
                model.selectedStationTest = "DRD"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Douglas Road")
            })
                
            }
                
        Group {
                
            Button(action: {
                model.secondStation = "Dr. Martin Luther King, Jr."
                model.secondStationID = "MLK"
                model.selectedStationTest = "MLK"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Dr. Martin Luther King, Jr.")
            })
            Button(action: {
                model.secondStation = "Earlington Heights"
                model.secondStationID = "EHT"
                model.selectedStationTest = "EHT"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Earlington Heights")
            })
            Button(action: {
                model.secondStation = "Government Center"
                model.secondStationID = "GVT"
                model.selectedStationTest = "GVT"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Government Center")
            })
            Button(action: {
                model.secondStation = "Hialeah"
                model.secondStationID = "HIA"
                model.selectedStationTest = "HIA"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Hialeah")
            })
            Button(action: {
                model.secondStation = "Historic Overtown/Lyric Theatre"
                model.secondStationID = "OVT"
                model.selectedStationTest = "OVT"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Historic Overtown/Lyric Theatre")
            })
            Button(action: {
                model.secondStation = "Miami International Airport"
                model.secondStationID = "MIA"
                model.selectedStationTest = "MIA"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Miami International Airport")
            })
            }
            
        Group {
            Button(action: {
                model.secondStation = "Northside"
                model.secondStationID = "NSD"
                model.selectedStationTest = "NSD"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Northside")
            })
            Button(action: {
                model.secondStation = "Okeechobee"
                model.secondStationID = "OKE"
                model.selectedStationTest = "OKE"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Okeechobee")
            })
            Button(action: {
                model.secondStation = "Palmetto"
                model.secondStationID = "PAL"
                model.selectedStationTest = "PAL"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Palmetto")
            })
            Button(action: {
                model.secondStation = "Santa Clara"
                model.secondStationID = "SCL"
                model.selectedStationTest = "SCL"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Santa Clara")
            })
            Button(action: {
                model.secondStation = "South Miami"
                model.secondStationID = "SMI"
                model.selectedStationTest = "SMI"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("South Miami")
            })
            Button(action: {
                model.secondStation = "Tri-Rail"
                model.secondStationID = "ALP"
                model.selectedStationTest = "ALP"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Tri-Rail")
            })
            Button(action: {
                model.secondStation = "University"
                model.secondStationID = "UNV"
                model.selectedStationTest = "UNV"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("University")
            })
            Button(action: {
                model.secondStation = "Vizcaya"
                model.secondStationID = "VIZ"
                model.selectedStationTest = "VIZ"
                model.isSecondSheetShowing = false
                model.updateModel(stationID: model.secondStationID)
            }, label: {
                Text("Vizcaya")
            })
            }
        }
    }
}


struct SecondAllStationsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondAllStationsSheetView()
            .environmentObject(StationModel())
    }
}
