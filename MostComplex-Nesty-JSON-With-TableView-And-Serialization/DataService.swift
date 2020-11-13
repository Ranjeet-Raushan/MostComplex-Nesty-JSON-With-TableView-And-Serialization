//  DataService.swift
//  Complex JSON
//  Created by Ranjeet Raushan on  13th-Nov-2020 .
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation

typealias JSON = [String: Any]

class DataService {
    
    private init() {}
    static let shared = DataService()
    
    func getData(completion: (Data) -> Void) {
        guard let path = Bundle.main.path(forResource: "localComplexJSON", ofType: "txt") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            completion(data)
        } catch {
            print(error)
        }
        
    }
    
}
