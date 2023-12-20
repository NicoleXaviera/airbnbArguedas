//
//  LugarCardItem.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 24/11/23.
//

import SwiftUI

struct LugarCardItem: View {
    var image: String
    var score: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            ZStack {
                Image(image)
                    .resizable()
                    .frame(width: 80, height: 100)
            }
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.gray)
                        .frame(width: 15, height: 15)
                    
                    Text(score)
                        .font(.caption)
                        .fontWeight(.light)
                    Spacer()
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 21, height: 20)
                }
                Text(title)
                    .fontWeight(.semibold)
                    .font(.system(size: 15))
                
                Text(description)
                    .font(.caption)
                    .fontWeight(.light)
                
            }
            .padding(.vertical, 10)
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding(.horizontal)
        .padding()
    }
}

#Preview {
    LugarCardItem(image: "item1", score: "4.91 (118)", title: "La calera, Colombia", description: "Hosted by Shaund")
}
