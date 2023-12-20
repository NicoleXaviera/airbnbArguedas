//
//  TapCardItem.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 10/11/23.
//

import SwiftUI

struct TapCardItem: View {
    var image:String
    var text: String
    
    var body: some View {
        VStack{
            Image(image)
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            Text(text)
        }
    }
}

#Preview {
    TapCardItem(image:"inbox", text: "Inbox")
}
