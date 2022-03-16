//
//  ContentView.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/5/22.
//

import SwiftUI

struct SwiftUIContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)


                Divider()

                Text("This rock has the shape of the front of a turtle's carapace, and is sacred to the Gabrieleño Native Americans.")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContentView()
    }
}
