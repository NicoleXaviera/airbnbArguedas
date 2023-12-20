//
//  ProfileCardItem.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 10/11/23.
//

import SwiftUI

struct ProfileCardItem: View {
    var title:String
    var subtitle:String
    var description:String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){

            HStack{
                Text(title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Text(subtitle).fontWeight(.light).foregroundStyle(.gray)
            Text(description).fontWeight(.light).foregroundStyle(.gray)
        }
    }
}

#Preview {
    ProfileCardItem(title:"Nicole",subtitle:"Nicole",description:"Nicole")
}
