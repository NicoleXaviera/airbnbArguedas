//
//  WishlistView.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 11/11/23.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                Text("Unforgettable activities hosted by locals")
                    .bold()
                    .font(.title)
                    .padding(.horizontal)
                    .padding(.top, 16)
                
                ZStack(alignment: .bottom) {
                    Image("item2")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 400)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            LugarCardItem(image: "item1", score: "4.91 (118)", title: "La calera, Colombia", description: "Hosted by Shaund")
                            LugarCardItem(image: "item2", score: "4.91 (118)", title: "La calera, Colombia", description: "Hosted by Shaund")
                            LugarCardItem(image: "item1", score: "4.91 (118)", title: "La calera, Colombia", description: "Hosted by Shaund")
                        }.padding()
                    }
                }
                
                Spacer()
                Text("Happening Today")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .padding(.horizontal)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        WishCardItem(image: "card1",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
                        WishCardItem(image: "card2",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
                        WishCardItem(image: "card1",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
                    }
                    .padding()
                }

                Spacer()
                Text("All experience")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        WishCardItem(image: "card1",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
                        WishCardItem(image: "card2",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
                        WishCardItem(image: "card1",score: "4.7", title: "Horse riding with lunch",price:"from $110 / person")
                    }
                    .padding()
                }
            }
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}

#Preview {
    WishlistView()
}
