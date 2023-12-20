//
//  InboxCardItem.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 23/11/23.
//

import SwiftUI

struct InboxCardItem: View {
    var image:String
    var nombre:String
    var lugar:String
    var description:String
    var estado:String
    
    
    var body: some View {
        Divider()
        HStack(spacing: 30){
            Image(image)
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(.infinity)
            VStack(alignment: .leading , spacing: 7){
                HStack(){

                    Text(nombre)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                    Text(lugar)
                        .foregroundColor(.gray)
                }
                Text(description)
                Text(estado)
                    .foregroundColor(.gray)
                
            }
        }
    }
}

#Preview {
    InboxCardItem(image:"perfil1", nombre:"Betty",lugar:"London",description:"New date and time request",estado:"Request pending")
}
