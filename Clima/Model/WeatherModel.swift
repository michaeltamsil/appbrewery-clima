//
//  WeatherModel.swift
//  Clima
//
//  Created by michael tamsil on 31/12/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

    var conditionName: String {
        switch conditionId {
        case 200...299:
            return "cloud.bolt"
        case 300...399:
            return "cloud.drizzle"
        case 500...599:
            return "cloud.rain"
        case 600...699:
            return "cloud.snow"
        case 700...799:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...809:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
