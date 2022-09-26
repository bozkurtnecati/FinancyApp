//
//  Savings.swift
//  Financy
//
//  Created by Necati Bozkurt on 22.09.2022.
//

import SwiftUI


struct Savings: Identifiable {
    var id = UUID()
    var name : String
    var price : String
    var color : String
    var barPercent: Float
    
}

extension Savings {
    static let sampleData: [Savings] =
    [
       Savings(name: "Iphone 13 Mini", price: "699", color: "red", barPercent: 50),
       Savings(name: "Macbook Pro M1", price: "1,499", color: "pink", barPercent: 50),
       Savings(name: "Car", price: "20,000", color: "yellow", barPercent: 50),
       Savings(name: "House", price: "30,500", color: "blue", barPercent: 50)
    ]
}

