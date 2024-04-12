//
//  MainView.swift
//  Africa
//
//  Created by Brandon Yates on 4/11/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
           ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                } //: END OF 1st TAB ITEM
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }//: END OF 2nd TAB ITEM
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }//: END OF 3rd TAB ITEM
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }//: END OF 4th TAB ITEM
        }//: END TAB VIEW
    }
}

#Preview {
    MainView()
}
