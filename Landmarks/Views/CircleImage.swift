//
//  CircleImage.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/2.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) // 设置一个圆形蒙版
            .overlay(Circle().stroke(.white, lineWidth: 5)) // 设置一个覆盖层，圆形的，再加一个白色的、宽度为 5 的轮廓线条
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/) // 设置一个半径为 10 的阴影
    }
}

#Preview {
    CircleImage()
}
