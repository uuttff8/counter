//
//  ConcurrencyCell.swift
//  Counter
//
//  Created by uuttff8 on 2018-07-15.
//  Copyright © 2018 Galaxit. All rights reserved.
//

import UIKit

class ConcurrencyCell: UITableViewCell {
    
    let concurrencyCell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "MyCell")

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        concurrencyCell.textLabel?.textColor = UIColor.red
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }

}
