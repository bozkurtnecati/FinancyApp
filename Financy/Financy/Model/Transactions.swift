//
//  Transactions.swift
//  Financy
//
//  Created by Necati Bozkurt on 24.09.2022.
//

import SwiftUI


struct Transactions: Identifiable {
    var id = UUID()
    var name : String
    var explanation: String
    var price : String
    var priceColor : String
    var color : String
    var icon : String
   
    
}

extension Transactions {
    static let sampleData: [Transactions] =
    [
       Transactions(name: "Adobe Illustrator", explanation: "Subcription fee", price: "32.00", priceColor: "red", color: "yellow", icon: "laptopcomputer"),
       Transactions(name: "Dribbble", explanation: "Subcription fee", price: "15.00", priceColor: "red", color: "yellow", icon: "laptopcomputer"),
       Transactions(name: "Sony Camera", explanation: "Shopping fee", price: "200.00", priceColor: "red", color: "pink", icon: "bag"),
       Transactions(name: "Paypal", explanation: "Salary", price: "32.00", priceColor: "green", color: "green", icon: "creditcard")
    
    ]
}
