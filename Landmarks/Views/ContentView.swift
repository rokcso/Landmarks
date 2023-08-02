//
//  ContentView.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/2.
//

import SwiftUI

// 声明一个遵循 View 协议的 Struct 命名为 ContentView
struct ContentView: View {
    // 在这个 Struct 中声明一个 body 属性变量具备一个或多个 View
    var body: some View {
        VStack {
            // 引用 MapView.swift 中声明的 MapView 视图
            MapView()
                .frame(height: 300) // 设置 View 的高度，宽度会自动适配设备
                .ignoresSafeArea(edges: .top) // 设置忽略顶部安全区域，让视图可以顶到设备刘海下方
            // View 中又具备一个或多个 Stack（描述了其内容和布局）组成 App 的视图
            // 设置 Stack 中内容的对齐方式（alignment）为 leading，Stack 中的内容默认居中对齐
            // 引用 CircleImage.swift 中声明的 CirclrImage 视图
            CircleImage()
                .offset(y: -130) // 设置偏移量，向 Y 轴方向偏移 -130
                .padding(.bottom, -130) // offset 设置了视图 Y 轴偏移 -130，但是视图的 Frame 仍在原地，需要让 Frame 底部 Padding 减少 130
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title) // 设置字体
                    .fontWeight(.bold) // 设置字重
                    .foregroundColor(.orange) // 设置字体颜色
                HStack {
                    Text("Joshua Tree National Park")
                    // Spacer() 将会把父级 Stack 中的所有内容顶开直到所有内容占据满父级 Stack
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary) // 设置字体颜色为系统次要颜色
                Divider() // 添加一个分隔线
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
            
        }
    }
}


// 预览视图，Swift 后期更新的新特性，不必再声明遵循 PreviewProvider 协议的 Struct
#Preview {
    // 要预览的 View
    ContentView()
}
