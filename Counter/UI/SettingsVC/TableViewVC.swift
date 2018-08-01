//
//  CustomCell.swift
//  Counter
//
//  Created by uuttff8 on 2018-07-30.
//  Copyright © 2018 Galaxit. All rights reserved.
//

import UIKit

struct CellData {
    let image: UIImage?
    let message: String?
}

class TableViewVC: UITableViewController {
    
    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        data = [CellData.init(image: UIImage(named: "me"), message: "How to make a portal")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = 44.0
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
}

