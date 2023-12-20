//
//  InboxView.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 11/11/23.
//

import SwiftUI

struct InboxView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Inbox")
                .bold()
                .font(.system(size: 35))
                .padding()
            VStack{
                HStack {
                    Button(action: {
                        selectedTab = 0
                    }) {
                        Text("Message")

                    }
                    Button(action: {
                        selectedTab = 1
                    }) {
                        Text("Notifications")
                            .foregroundColor(selectedTab == 1 ? .blue : .gray)
                            .padding([.horizontal])
      
                    }
                } .padding([.horizontal])
            }
            TabView(selection: $selectedTab) {
            HStack() {
                VStack(alignment: .leading) {
                    InboxCardItem(image:"perfil1",nombre:"Betty",lugar:"London",description:"New date and time request",estado:"Canceled . Feb 13-14, 2023")
                    
                    InboxCardItem(image:"perfil2",nombre:"Jerson",lugar:"Paris",description:"New date and time request",estado:"Request pending")
                    
                    InboxCardItem(image:"perfil1",nombre:"Jeremias",lugar:"Mayorca",description:"New date and time request",estado:"Request pending")
                    
                    InboxCardItem(image:"perfil2",nombre:"Andrea",lugar:"Madrid",description:"New date and time request",estado:"Request pending")
                }
                .padding([.horizontal])
            }

                Text("Sin notificaciones")
                    .tag(1)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            Spacer()
                .frame(height: 250)
        }
    }
}

#Preview {
    InboxView()
}
