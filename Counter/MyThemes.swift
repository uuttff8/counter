//
//  MyThemes.swift
//  PlistDemo
//
//  Created by Gesen on 16/3/14.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import Foundation
import SwiftTheme

private let lastThemeIndexKey = "lastedThemeIndex"
private let defaults = UserDefaults.standard

enum MyThemes: Int {
    
    case white = 0
    case night = 1
    
    // MARK: -
    
    static var current = MyThemes.white
    static var before  = MyThemes.white
    
    // MARK: - Switch Theme
    
    static func switchTo(_ theme: MyThemes) {
        before  = current
        current = theme
        
        switch theme {
        case .white: ThemeManager.setTheme(plistName: "White", path: .mainBundle)
        case .night: ThemeManager.setTheme(plistName: "Night", path: .mainBundle)
        }
    }
    
    static func switchToNext() {
        var next = current.rawValue + 1
        let max  = 2 // without Blue and Night
        
        if next >= max { next = 0 }
        
        switchTo(MyThemes(rawValue: next)!)
    }
    
    // MARK: - Switch Night
    
    static func switchNight(_ isToNight: Bool) {
        switchTo(isToNight ? .night : before)
    }
    
    static func isNight() -> Bool {
        return current == .night
    }
    
    // MARK: - Save & Restore
    
    static func restoreLastTheme() {
        switchTo(MyThemes(rawValue: defaults.integer(forKey: lastThemeIndexKey))!)
        //switchTo(theme: MyThemes(rawValue: defaults.integer(forKey: lastThemeIndexKey))!)

    }
    
    static func saveLastTheme() {
        defaults.set(ThemeManager.currentThemeIndex, forKey: lastThemeIndexKey)
    }
    
}


