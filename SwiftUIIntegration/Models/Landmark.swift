//
//  Landmark.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/16/22.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}