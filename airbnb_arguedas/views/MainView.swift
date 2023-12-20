//
//  MainView.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 10/11/23.
//

import SwiftUI

struct MainView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    TapCardItem(image: "magnifing", text: "Explore")
                }
            WishlistView()
                .tabItem {
                    TapCardItem(image: "heart", text: "Wishlist")
                }
            TripsView()
               .tabItem {
                   TapCardItem(image: "logo-icon", text: "Trips")
               }
               .toolbar(.visible, for: .tabBar)
               .toolbarBackground(Color.white, for: .tabBar)

            ProfileView()
                .tabItem {
                    TapCardItem(image: "profile", text: "Profile")
                }
            InboxView()
                .tabItem {
                    TapCardItem(image: "inbox", text: "Inbox")
                }
            DetailView()
                .tabItem {
                    TapCardItem(image: "logo-icon", text: "Detalles")
                }
        }
        .tint(Color("AirbnbPrimary"))
    }
}


#Preview {
    MainView()
}
