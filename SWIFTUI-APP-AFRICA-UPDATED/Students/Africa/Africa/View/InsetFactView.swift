//
//  InsetFactView.swift
//  Africa
//
//  Created by Brandon Yates on 4/13/24.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//END OF TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            
        }//END OF GROUP BOX
    }
}

//MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
