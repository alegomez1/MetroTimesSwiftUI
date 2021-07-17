//
//  StationData.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 7/16/21.
//

import Foundation

class StationData: ObservableObject {
    
    private static var documentsFolder: URL {
            do {
                return try FileManager.default.url(for: .documentDirectory,
                                                   in: .userDomainMask,
                                                   appropriateFor: nil,
                                                   create: false)
            } catch {
                fatalError("Can't find documents directory.")
            }
        }
    
    private static var fileURL: URL {
            return documentsFolder.appendingPathComponent("stations.data")
        }
    
    @Published var stations: [Station] = []
    
    func load() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let data = try? Data(contentsOf: Self.fileURL) else {
                           #if DEBUG
                           DispatchQueue.main.async {
                               self?.stations = Station.data
                           }
                           #endif
                           return
                       }
            guard let newStationsData = try? JSONDecoder().decode([Station].self, from: data) else {
                            fatalError("Can't decode saved station data.")
                        }
                }
    }
    
    func save() {
            DispatchQueue.global(qos: .background).async { [weak self] in
                guard let stations = self?.stations else { fatalError("Self out of scope") }
                guard let data = try? JSONEncoder().encode(stations) else { fatalError("Error encoding data") }
                do {
                    let outfile = Self.fileURL
                    try data.write(to: outfile)
                } catch {
                    fatalError("Can't write to file")
                }
            }
        }
    
}

