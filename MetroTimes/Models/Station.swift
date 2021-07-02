//
//  Station.swift
//  MetroTimes
//
//  Created by Alejandro Gomez on 6/28/21.
//

import Foundation

class Station: Identifiable, Decodable {

    var id:UUID?
    var RecordSet:[String:[String:String]]

}
