//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Igor Odaryuk on 23.06.2023.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
        
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
  //  static var previews: some View {
    //    AllCoinsView()
    //}
//}
