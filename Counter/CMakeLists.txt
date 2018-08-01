cmake_minimum_required(VERSION 3.10)
project(Counter)

set(CMAKE_CXX_STANDARD 11)

add_executable(Counter
        Assets.xcassets/AppIcon.appiconset/Contents.json
        Assets.xcassets/LaunchImage.launchimage/Contents.json
        Assets.xcassets/purse.imageset/Contents.json
        Assets.xcassets/purse.imageset/purse.png
        Assets.xcassets/settings.imageset/Contents.json
        Assets.xcassets/settings.imageset/settings.png
        Assets.xcassets/Contents.json
        Plist/Night.plist
        Plist/White.plist
        "Supporting Files/Base.lproj/LaunchScreen.storyboard"
        "Supporting Files/Counter.xcdatamodeld/Counter.xcdatamodel/contents"
        UI/PriceVC/Price.swift
        UI/SettingsVC/Settings.swift
        AppDelegate.swift
        GlobalPicker.swift
        Info.plist
        MainTabBar.swift
        MyThemes.swift)
