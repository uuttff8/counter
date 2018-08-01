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
    
    
    private let myArray: NSArray = ["Concurrency","Donate","Night Theme","Support Stores"]
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        //view.backgroundColor = UIColor(red: 34/255.0, green: 34/255.0, blue: 34/255.0, alpha: 1)
        
        // Settings Titles
        title = "Settings"

        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .always
        }
        
        createTableView()
        self.view.addSubview(myTableView)
        
    }
    
    func createTableView()
    {
        // UITableView
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        
        data = [CellDataNew.init(image: UIImage(named: ""), message: "Hello Lol")]
    }
}


extension Settings: UITableViewDelegate, UITableViewDataSource
{
    // MARK: - UITableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(data[indexPath.row])")
        
        switch indexPath.row {
        case 0: print("")
        case 1: print("")
            
        default: break
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(data[indexPath.row].message!)"
        return cell
    }

}
// PLEASE TO DO A EACH CELLS IS CUSTOM
// YOU MUST USE ARRAY OF STRUCT "CellDataNew"(temporarily) AND ASSIGN CUSTOM BY EACH CELL + TRANSITION
