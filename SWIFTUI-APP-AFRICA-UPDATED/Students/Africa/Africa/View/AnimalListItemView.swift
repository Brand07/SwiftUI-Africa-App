//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Brandon Yates on 4/11/24.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Lion")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("The worlds most social felines, lions roam the savannas and grasslands of the African continent, hunting cooperatively and raising cubs in prides.")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }// END OF VSTACK
        } //END OF HSTACK
    }
}

#Preview {
    AnimalListItemView()
        .previewLayout(.sizeThatFits)
        .padding()
}