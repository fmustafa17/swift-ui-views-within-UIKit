//
//  CircleImage.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/15/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
