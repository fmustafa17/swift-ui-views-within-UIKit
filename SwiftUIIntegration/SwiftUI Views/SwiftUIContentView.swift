//
//  SwiftUIContentView.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/5/22.
//

import SwiftUI

struct SwiftUIContentView: View {
    @StateObject private var modelData = ModelData()
    
    var body: some View {
        LandmarkList()
            .environmentObject(modelData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContentView()
            .environmentObject(ModelData())
    }
}
