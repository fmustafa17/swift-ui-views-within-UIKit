//
//  Landmark.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/16/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int // required by the Identifiable protocol
    var name: String
    var park: String
    var city: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

}
