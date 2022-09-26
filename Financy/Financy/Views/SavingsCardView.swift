//
//  SavingsCardView.swift
//  Financy
//
//  Created by Necati Bozkurt on 22.09.2022.
//

import SwiftUI

struct SavingsCardView: View {
    
    var savings : Savings = .sampleData[2]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(savings.name)
                .foregroundColor(.secondary)
                .font(.footnote)
            Text("$\(savings.price)")
                .font(.headline)
            Spacer()
            ProgressView(value: savings.barPercent, total: 100)
                .background(Color(savings.color).opacity(0.2))
                .frame(width: 132.0, height: 7.0)
                .accentColor(Color(savings.color))
            
        }
        .padding(12)
        .frame(width: 156.0, height: 91.0)
        .background(Color("white"))
        .cornerRadius(10)
        .overlay(
            Image(systemName: "chevron.forward")
                .frame(width: 16.0, height: 16.0)
                .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(12)
        )
    }
}

struct SavingsCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SavingsCardView()
                .previewInterfaceOrientation(.portrait)
                
        }
        
    }
}
