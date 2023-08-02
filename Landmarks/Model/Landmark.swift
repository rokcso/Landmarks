//
//  Landmark.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/9.
//

import Foundation
import SwiftUI
import CoreLocation

// 声明一个 Landmark 结构体来存储 Json 数据
// 使 Landmark Struct 遵循 Codable 协议可以便于处理 Json 数据
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // 声明一个私有的图片名称，因为这个图片名称只用于该 Struct 中用于构建下面的 Image View
    private var imageName: String
    // 声明一个计算属性 image，存储的是 Image View
    var image: Image {
        Image(imageName)
    }
    
    // 声明一个 Struct 来存储坐标信息
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    // 声明一个私有的坐标对象（实例）符合坐标 Struct，这个对象也是私有的，因为只会在该 Landmark Struct 中被用到
    private var coordinates: Coordinates
    
    // 声明一个符合 CLLocationCoordiate2D Struct 的 locationCoordinate 实例，用来调用 MapKit 时传入参数
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
}

