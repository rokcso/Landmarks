//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/10.
//

import SwiftUI

struct LandmarkRow: View {
    // 声明一个符合 Landmark Struct 的 landmark 实例
    var landmark: Landmark
    var body: some View {
        HStack {
            // 直接使用 landmark 实例的 iamge 属性
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    // 已经声明了 LandmarkRow 的属性 landmark，但是无实际值，所以在预览初始化的时候需要传入一个有实际值符合 Landmark Struct 的 landmark
    LandmarkRow(landmark: landmarks[0])
}
