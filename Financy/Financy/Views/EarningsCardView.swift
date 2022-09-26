//
//  EarningsCardView.swift
//  Financy
//
//  Created by Necati Bozkurt on 21.09.2022.
//

import SwiftUI

struct EarningsCardView: View {
    
    var earnings: Earnings
    
    var body: some View {
        VStack(spacing: 5.0) {
            Text(earnings.firstLetter)
                .frame(width: 28.0, height: 28.0)
                .foregroundColor(.black)
                .background(.white)
                .opacity(0.8)
                .font(.headline)
                .clipShape(Circle())
                
            Spacer()
            
            Text(earnings.name)
                .font(.caption)
            Text("$ \(earnings.price)")
                .fontWeight(.bold)
 
        }
        .padding()
        .frame(width: 125.0, height: 130.0)
        .background(Color(earnings.color))
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

struct EarningsCardView_Previews: PreviewProvider {
    static var previews: some View {
        EarningsCardView(earnings: .sampleData[0])
    }
}
