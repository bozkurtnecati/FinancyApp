//
//  ContentView.swift
//  Financy
//
//  Created by Necati Bozkurt on 16.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    var earnings: [Earnings] = Earnings.sampleData
    var savings: [Savings] = Savings.sampleData
    var transactions: [Transactions] = Transactions.sampleData
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32.0) {
                
                header
                   
                wallet
                    .padding(18)
                    .frame(height: 138.0)
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                come
                    .padding(.vertical, 10)
                    .padding(.horizontal, 28)
                    .frame(height: 66.0)
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.top, -16)
                    
                allEarnings
                   
                allSavings
                
                allTransactions
                
            }
            
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(Color("bg"))
        
    }
    
    
    var header: some View {
        HStack(alignment: .center) {
            Image("profile")
                .padding(.top, 5)
                .frame(width: 32.0, height: 32.0)
            VStack(alignment: .leading){
                Text("Good Morning")
                    .font(.footnote)
                Text("C Muthu Krishnan")
                    .font(.headline)
            }
            Spacer()
            Image(systemName: "bell.badge")
                .frame(width: 24.0, height: 24.0)
        }
    }
    
    var wallet: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            VStack(alignment: .leading) {
                Text("Total Balance")
                    .font(.subheadline)
                Text("$25,000.40")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            
            HStack {
                Text("My Wallet")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Image(systemName: "arrow.right")
                    .font(.headline)
                    .frame(height: 16)
                    .padding(10)
                    .foregroundColor(.black)
                    .background(.white)
                    .clipShape(Circle())
            }
        }
    }
    
    var come: some View {
        HStack{
            HStack {
                Image(systemName: "arrow.down")
                    .foregroundColor(.green)
                    .font(.system(size: 24, weight: .bold))
                    
                VStack(alignment: .leading) {
                    Text("Income")
                        .font(.caption)
                    Text("$ 20,000")
                        .font(.headline)
                }
            }
            Spacer()
            Rectangle()
                .frame(width: 1.0)
                .opacity(0.5)
            Spacer()
               
            HStack {
                Image(systemName: "arrow.up")
                    .foregroundColor(.red)
                    .font(.system(size: 24, weight: .bold))
                VStack(alignment: .leading) {
                    Text("Outcome")
                        .font(.caption)
                    Text("$ 17,000")
                        .font(.headline)
                }
            }
        }
    }
    
    var allEarnings: some View {
        VStack {
            HStack {
                Text("Earnings")
                    .font(.title3)
                Spacer()
                Button{} label: {
                    Text("See All")
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(earnings) { item in
                        EarningsCardView(earnings: item)
                            .padding(2)
                    }
                }
            }
        }
    }
    
    var allSavings: some View {
        VStack{
            HStack {
                Text("Savings")
                    .font(.title3)
                Spacer()
                Button{} label: {
                    Text("See All")
                }
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 156))], spacing: 20) {
                ForEach(savings) { item in
                        SavingsCardView(savings: item)
                }
            }
        }
    }
    
    var allTransactions: some View {
        VStack() {
            HStack {
                Text("Transactions")
                    .font(.title3)
                Spacer()
                Button{} label: {
                    Text("See All")
                }
            }
            HStack {
                Text("Today")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.vertical, 10)
            
            ForEach(transactions) { item in
                  TransactionsCardView(transactions: item)
                    .padding(.vertical, 4)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

