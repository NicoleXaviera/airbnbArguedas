//
//  ContentView.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack(alignment: .leading, spacing: 20) {
                
                HStack(spacing:40 ){
                    Category(icon: "ovni", text: "OMG!")
                    Category(icon: "beaches", text: "Beaches")
                    Category(icon: "home", text: "Tiny Home")
                    Category(icon: "golf", text: "Golfing")
                    Category(icon: "landscape", text: "Amazing")
                }
            }
                Divider()
                List(contentViewModel.airbnb.places,id:\.name){ place in
                  
                    HomeCardItem(place: place)

                }.listStyle(.inset)
                    .task {
                        await contentViewModel.loadData()
                        
                    }
            }.padding([.horizontal])
        }
    }


#Preview {
    ContentView()
}
