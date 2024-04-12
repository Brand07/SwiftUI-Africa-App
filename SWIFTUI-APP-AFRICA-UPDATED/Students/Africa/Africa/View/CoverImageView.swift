//
//  CoverImageView.swift
//  Africa
//
//  Created by Brandon Yates on 4/11/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: END OF LOOP
        }// END: TabView
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}

// MARK: - PREVIEW

#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
