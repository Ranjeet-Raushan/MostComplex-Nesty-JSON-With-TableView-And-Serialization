//  Batters.swift
//  MostComplex-Nesty-JSON-With-TableView-And-Serialization
//  Created by Ranjeet Raushan on  13th-Nov-2020 .
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation

struct Batters {
    
    let batters: [Batter]
    
    init?(json: JSON) {
        guard let batterJSON = json["batter"] as? [JSON] else { return nil }
        let battersObject = batterJSON.map({ Batter(json: $0)! })
        self.batters = battersObject
    }
}
