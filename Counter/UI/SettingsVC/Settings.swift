//
//  Tab 2ViewController.swift
//  Counter
//
//  Created by uuttff8 on 2018-06-14.
//  Copyright © 2018 Galaxit. All rights reserved.
//

import UIKit

struct CellDataNew {
    let image: UIImage?
    let message: String?
}

class Settings: UIViewController {
    
    private var data = [CellDataNew]()
    
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Settings"             // Title navBar
        
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .always
        }
        
        createTableView()
        self.view.addSubview(myTableView)
        
    }
    
    
    // MARK: - UITableView
    func createTableView() {
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.rowHeight = 44.0
        
        data = [CellDataNew.init(image: UIImage(named: "me"), message: "Concurrency")]
    }
}


extension Settings: UITableViewDelegate, UITableViewDataSource {
    // MARK: - UITableView
    
     // Cell for Row at
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        
        if (indexPath.row % 2) == 0 {
            cell.separatorInset.left = 100
        }
        
        return cell
    }
    
    // did Select Row At
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(data[indexPath.row])")
        
        switch indexPath.row {
        case 0: print("")
        case 1: print("")
            
        default: break
        }
    }
    
    // number Of Rows In Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}
