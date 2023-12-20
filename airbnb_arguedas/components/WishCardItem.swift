//
//  WishCardItem.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 23/11/23.
//

import SwiftUI

struct WishCardItem: View {
    var image: String
    var score: String
    var title: String
    var price: String
    
    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 10) {
                ZStack(alignment: .topTrailing){
                    Image(image)
                        .resizable()
                        .frame(width: 170, height: 230)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 21, height: 20)
                        .foregroundColor(.red)
                        .padding()
                }
                
                HStack {
                    Image(systemName: "star.fill")
                    Text(score)
                    Text("(1116)")
                        .foregroundStyle(.gray)
                }
                
                Text(title)
                Text(price)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    WishCardItem(image: "card1",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
}
