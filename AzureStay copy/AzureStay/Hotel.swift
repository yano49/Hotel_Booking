//
//  Hotel.swift
//  AzureStay
//
//  Created by Giyu Tomioka on 9/28/24.
//

import Foundation

struct Hotel: Codable {
    let id: Int
    let name: String
    let location: String
    let rating: Double
    let price: Double
    let amenities: [String]
    
    // Function to load hotels from a local JSON file
    static func loadHotels() -> [Hotel]? {
        if let url = Bundle.main.url(forResource: "hotels", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let hotels = try decoder.decode([Hotel].self, from: data)
                return hotels
            } catch {
                print("Error loading JSON data: \(error)")
            }
        }
        return nil
    }
}
