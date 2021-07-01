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
//    var Record:Int
//    var Other:Int

}

//struct Root : Codable {
//    let stations = [Station]
//}
//
//struct Station: Codable {
//    let stationName: String
//    let stationID: String
//
//    enum CodingKeys: String, CodingKey {
//        case stationName = "StationName"
//        case brandName = "brand_name"
//        case servingWeightGrams = "serving_weight_grams"
//        case nfCalories = "nf_calories"
//        case nfTotalFat = "nf_total_fat"
//        case nfSaturatedFat = "nf_saturated_fat"
//        case nfTotalCarbohydrate = "nf_total_carbohydrate"
//        case nfProtein = "nf_protein"
//    }
//}
