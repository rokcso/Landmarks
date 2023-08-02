//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/2.
//

import SwiftUI

// 程序的入口
@main

// 声明一个遵循 App 协议的 Struct 命名为 LandmarksApp
struct LandmarksApp: App {
    // 在这个 Struct 中声明一个 body 属性具备一个或多个 Scene
    var body: some Scene {
        // Scene 中提供要显示的视图 View
        WindowGroup {
            // 该 View 是在 ContentView.swift 中被定义的 Struct
            ContentView()
        }
    }
}
