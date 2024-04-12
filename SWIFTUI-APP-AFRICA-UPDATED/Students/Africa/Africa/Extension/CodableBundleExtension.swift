//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Brandon Yates on 4/11/24.
//

import Foundation

extension Bundle {
    func decode (_ file: String) -> [CoverImage] {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to lococate \(file) in bundle")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the read-to-use data
        return loaded
    }
}
