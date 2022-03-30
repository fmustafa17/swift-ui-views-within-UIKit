//
//  LandmarkList.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/16/22.
//

import SwiftUI

struct LandmarkList: View {
    // The modelData property gets its value automatically, as long as the environmentObject(_:) modifier has been applied to a parent.
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            // Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
            List {
                // pass a binding to a toggle control
                // A binding acts as a reference to a mutable state.
                // When a user taps the toggle from off to on, and off again, the control uses the binding to update the view’s state accordingly.
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                // To combine static and dynamic views in a list, or to combine two or more different groups of dynamic views, use the ForEach type instead of passing your collection of data to List.
                ForEach(filteredLandmarks) {
                    landmark in
                    NavigationLink {
                        // to pass in modelData from this view to the LandmarkDetail view, we need to wrap it by prefixing an underscore
                        // xcode gives an error 'Cannot convert value 'modelData' of type 'ModelData' to expected type 'EnvironmentObject<ModelData>', use wrapper instead'
                        LandmarkDetail(modelData: _modelData, landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
