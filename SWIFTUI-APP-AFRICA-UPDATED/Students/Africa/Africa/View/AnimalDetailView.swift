//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Brandon Yates on 4/13/24.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor.frame(height: 6)
                            .offset(y: 24)
                    )
                
                    
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // FACTS
                
                // DESCRITOIN
                
                // MAP
                
                // LINK
                
            }//END OF VSTACK
            .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
        }//END OF SCROLL VIEW
        
        
    }
}


//MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 15 Pro Max")
    }
}
