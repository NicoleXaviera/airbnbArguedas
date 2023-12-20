////
////  HomeCardItemPrueba.swift
////  airbnb_arguedas
////
////  Created by MAC46 on 1/12/23.
////
//
////
////  ContentView.swift
////  test-api-rest
////
////  Created by Linder Anderson Hassinger Solano    on 30/11/23.
////
//
//import SwiftUI
//
//struct HomeCardItemPrueba: View {
//    @StateObject var contentViewModel = ContentViewModel()
//    
//    var body: some View {
//        
//        VStack(alignment: .leading, spacing: 20){
//            List(contentViewModel.airbnb.places, id: \.name) { item in
//            AsyncImage(url: URL(string: item.image_url)) { image in
//                image.resizable()
//            } placeholder: {
//                ProgressView()
//            }
//                .frame(width: 342,height: 323).aspectRatio(contentMode: .fit).cornerRadius(12)
//            HStack{
//                Text(item.name).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                Spacer()
//                Image(systemName: "star.fill")
////                Text(item.rating)
//            }
//            Text("Profesional Host").fontWeight(.light).foregroundStyle(.gray)
//            Text("18-23 Dec").fontWeight(.light).foregroundStyle(.gray)
////            Text(item.price).fontWeight(.semibold)
//        }
////        VStack {
////            List(contentViewModel.airbnb.places, id: \.name) { item in
////                HStack {
////                    AsyncImage(url: URL(string: item.image_url)) { image in
////                        image.resizable()
////                    } placeholder: {
////                        ProgressView()
////                    }
////                    .frame(width: 100, height: 100)
////                    Text(item.name)
////
////                }
////            }.task {
////                await contentViewModel.loadData()
////            }.listStyle(.inset)
////        }
////        .padding()
//    }
//}
//
//
//
//
//
//#Preview {
//    HomeCardItemPrueba()
//}
