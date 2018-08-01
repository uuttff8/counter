//
//  HoldTabBar.swift
//  Counter
//
//  Created by uuttff8 on 2018-06-14.
//  Copyright © 2018 Galaxit. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    func setupTabBar() {
        let priceController = createNavController(vc: Price(), selected: #imageLiteral(resourceName: "purse"), unselected: #imageLiteral(resourceName: "purse"))
        let settingsController = createNavController(vc: Settings(), selected:  #imageLiteral(resourceName: "settings"), unselected: #imageLiteral(resourceName: "settings"))
        
        viewControllers = [priceController, settingsController]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets.init(top: 4, left: 0, bottom: -4, right: 0)
        }
        
        
        //MARK: - PriceVC
        priceController.title = "Price"
        
        //MARK: - SettingsVC
        settingsController.title = "Settings"
    }
    
}

extension UITabBarController {
    
    func createNavController(vc: UIViewController, selected: UIImage, unselected: UIImage) -> UINavigationController {
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }
}
