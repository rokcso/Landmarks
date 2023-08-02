//
//  MapView.swift
//  Landmarks
//
//  Created by waringhu on 2023/8/2.
//

import SwiftUI
import MapKit

struct MapView: View {
    // 声明一个状态（State）为私有（private）的变量 region 存储地图坐标信息
    //
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    MapView()
}
