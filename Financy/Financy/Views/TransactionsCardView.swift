//
//  TransactionsCardView.swift
//  Financy
//
//  Created by Necati Bozkurt on 26.09.2022.
//

import SwiftUI

struct TransactionsCardView: View {
    
    var transactions : Transactions = .sampleData[1]
    
    var body: some View {
        
        HStack {
            Image(systemName: transactions.icon)
                .font(.headline)
                .frame(width: 40.0, height: 40.0)
                .background(Color(transactions.color).opacity(0.3))
                .foregroundColor(Color(transactions.color))
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(transactions.name)
                    .font(.headline)
                Text(transactions.explanation)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text("$\(transactions.price)")
                .font(.headline)
                .foregroundColor(Color(transactions.priceColor))
        }
        .padding()
        .background(Color("white"))
        .cornerRadius(8)
      
       
     
        
    }
}

struct TransactionsCardView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsCardView()
    }
}
