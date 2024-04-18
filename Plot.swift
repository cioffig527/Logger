//
//  Plot.swift
//  Logger
//
//  Created by Giovanni Cioffi on 4/3/24.
//

import Foundation
import SwiftUI
import MapKit

struct Plot{
    var topLeftPoint: CLLocationCoordinate2D
    var bottomRightPoint: CLLocationCoordinate2D
    var topRightPoint: CLLocationCoordinate2D
    var bottomLeftPoint: CLLocationCoordinate2D
    var center: CLLocationCoordinate2D
    var square: MapPolygon
    var plotName: String
    var code: String
    
    init(code: String, firstPointLatitude: Double, firstPointLongitude: Double, secondPointLatitude: Double, secondPointLongitude: Double, plotName: String) {
        topLeftPoint = CLLocationCoordinate2D(latitude: firstPointLatitude, longitude: firstPointLongitude)
        bottomRightPoint = CLLocationCoordinate2D(latitude: secondPointLatitude, longitude: secondPointLongitude)
        topRightPoint = CLLocationCoordinate2D(latitude: topLeftPoint.latitude, longitude: bottomRightPoint.longitude)
        bottomLeftPoint = CLLocationCoordinate2D(latitude: bottomRightPoint.latitude, longitude: topLeftPoint.longitude)
        square = MapPolygon(coordinates: [topLeftPoint, topRightPoint, bottomRightPoint, bottomLeftPoint])
        center = CLLocationCoordinate2D(latitude: ((firstPointLatitude+secondPointLatitude)/2), longitude: ((secondPointLongitude+firstPointLongitude)/2))
        self.code = code
        self.plotName = plotName
    }
}

extension Plot: Identifiable {
    var id: String { code }
}
