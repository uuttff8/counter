//
//  ViewController.swift
//  Counter
//
//  Created by uuttff8 on 2018-06-13.
//  Copyright © 2018 Galaxit. All rights reserved.
//

import UIKit

class Price: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        //view.backgroundColor = UIColor(red: 34/255.0, green: 34/255.0, blue: 34/255.0, alpha: 1)
        
        // Settings Titles
        title = "Price"
        
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .always
        }
    }
}
