//
//  WeatherData.swift
//  Clima
//
//  Created by J'mari Wyatt on 7/4/2 R.
//  Copyright © 2 J'mariko Consulting. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
}
