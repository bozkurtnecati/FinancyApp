//
//  Earnings.swift
//  Financy
//
//  Created by Necati Bozkurt on 21.09.2022.
//

import SwiftUI

struct Earnings:Identifiable {
    var id = UUID()
    var name : String
    var price : String
    var color : String
    var firstLetter: String
    
}

extension Earnings {
    static let sampleData: [Earnings] =
    [
        Earnings(name: "Upwork", price: "3,000", color: "red", firstLetter: "U"),
        Earnings(name: "Freepik", price: "3,000", color: "pink", firstLetter: "F"),
        Earnings(name: "Envato", price: "2,000", color: "blue", firstLetter: "E")
    ]
}

