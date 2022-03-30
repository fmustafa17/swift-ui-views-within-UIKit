//
//  CircleImage.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/15/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
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
        // the detail view, which instantiates a circle image, needs an input parameter as wel
        CircleImage(image: Image("turtlerock"))
    }
}
