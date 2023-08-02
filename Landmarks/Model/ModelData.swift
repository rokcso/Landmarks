//
//  ModelData.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/10.
//

import Foundation

// 声明一个读取 Json 数据的方法
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

// 读取 Json 数据并将其赋值给一个符合 Landmark Struct 的实例组成的名为 landmarks 的数组
var landmarks: [Landmark] = load("landmarkData.json")
