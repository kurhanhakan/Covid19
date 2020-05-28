//
//  CovidData.swift
//  Covid19
//
//  Created by HAKAN K on 5/28/20.
//  Copyright © 2020 HAKAN K. All rights reserved.
//

import Foundation


struct CovidData: Codable {
    
    let state: String
    let death: Int
    let total: Int
    let recovered: Int?
    let hospitalized: Int?
    
}
