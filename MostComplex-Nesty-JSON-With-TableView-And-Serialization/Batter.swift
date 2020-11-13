//  Batter.swift
//  MostComplex-Nesty-JSON-With-TableView-And-Serialization
//  Created by Ranjeet Raushan on  13th-Nov-2020 .
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.



import Foundation

struct Batter {
    
    let id: String
    let type: String
    
    init?(json: JSON) {
        guard let id = json["id"] as? String,
            let type = json["type"] as? String
            else { return nil }
        
        self.id = id
        self.type = type
        
    }
}
