//  Item.swift
//  MostComplex-Nesty-JSON-With-TableView-And-Serialization
//  Created by Ranjeet Raushan on  13th-Nov-2020 .
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.


import Foundation

struct Item {
    
    let batters: Batters
    
    init?(json: JSON) {
        guard let battersJSON = json["batters"] as? JSON else { return nil }
        self.batters = Batters(json: battersJSON)!
    }
}
