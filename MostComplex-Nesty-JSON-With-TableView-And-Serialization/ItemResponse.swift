//  ItemResponse.swift
//  Complex JSON
//  Created by Ranjeet Raushan on  13th-Nov-2020 .
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation

struct ItemResponse {
    
    let itemsElement: [Item]
    
    
    init?(json: JSON) {
        guard let items = json["items"] as? JSON else { return nil }
        guard let itemArray = items["item"] as? [JSON] else { return nil }
        let itemObjects = itemArray.map({ Item(json: $0)! })
        self.itemsElement = itemObjects
    }
}
