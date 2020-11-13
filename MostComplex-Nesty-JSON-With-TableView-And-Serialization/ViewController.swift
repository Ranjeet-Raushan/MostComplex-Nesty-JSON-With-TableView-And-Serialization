 //  ViewController.swift
//  Complex JSON
//  Created by Ranjeet Raushan on  13th-Nov-2020 .
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import UIKit

class ViewController: UIViewController {

    var batters = [Batter]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.shared.getData { (data) in
            do {
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? JSON else { return }
                let itemResponse = ItemResponse(json: json)
                guard let batters = itemResponse?.itemsElement.first?.batters.batters else { return }
                print(batters)
                self.batters = batters
                
                 
            } catch {
                print(error)
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return batters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = batters[indexPath.row].type
        cell.detailTextLabel?.text = batters[indexPath.row].id
        return cell
    }
}

