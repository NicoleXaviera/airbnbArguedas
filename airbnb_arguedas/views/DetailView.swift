//
//  DetailView.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 24/11/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ZStack(alignment: .topLeading){
                    Image("detail_image")
                        .resizable()
                        .frame(height: 250)
                        .ignoresSafeArea()

                    HStack(alignment: .top, spacing: 8){
                        Image(systemName: "chevron.backward.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                        Spacer()
                        
                        Image(systemName: "square.and.arrow.up.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                        
                        Image(systemName: "heart.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }.padding(.horizontal)
                }
                
                Text("Stunning Family home close to the city centre")
                    .bold()
                    .font(.title)
                    .padding(.horizontal)
                    .padding(.top, 16)
                
                VStack(alignment: .leading){
                    HStack(spacing:2 ){
                        Image(systemName: "star.fill")
                        Text("4.76")
                        Spacer()
                        Text("28 reviews")
                            .fontWeight(.semibold)
                            .underline()
                        Spacer()
                        Image(systemName: "medal.fill")
                        Text("Superhost")
                            .foregroundStyle(.gray)
                    }.padding(.horizontal)
                    Spacer()
                    Text("Greater Manchester, England, United Kingdom")
                    Divider()
                }.padding(.horizontal)
                Spacer()
                VStack(alignment: .leading, spacing: 30){
                    HStack(alignment:.top, spacing: 15){
                        VStack(alignment: .leading, spacing: 5){
                            Text("This is a rare find.")
                                .font(.system(size:18))
                                .bold()
                            Text("City Superhost's place on Airbnb is usually fully booked")
                                .font(.system(size:18))
                            }
                        
                        Image(systemName:"camera.macro")
                            .resizable()
                            .frame(width: 35, height: 40)
                            .foregroundColor(.red)
                            .padding()
                        }
                    Divider()
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 15){
                            Text("Entire home hosted by City Superhost")
                                .font(.system(size:25))
                                .bold()
                            Text("6 gests . 3 bedrooms . 3 beds . 2 bathrooms")
                                .font(.system(size:20))
                        }
                        Image(systemName:"heart.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.orange)
                            .padding()
                           
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Image(systemName:"door.right.hand.closed")
                                .resizable()
                                .frame(width: 20, height: 30)
                                .foregroundColor(.gray)
                            Spacer()
                            VStack(alignment: .leading, spacing: 5){
                                Text("Self check-in")
                                    .fontWeight(.semibold)
                                    .font(.system(size:18))
                                Text("Check yourself in with the lockbox")
                                    .foregroundStyle(.gray)
                                    .font(.system(size:18))
                            }
                        }.padding(.horizontal)
                        
                        Spacer()
                        
                        HStack{
                            Image(systemName:"medal")
                                .resizable()
                                .frame(width: 25, height: 30)
                                .foregroundColor(.gray)
                            Spacer()
                            VStack(alignment: .leading, spacing: 5){
                                Text("City Superhost is a superhost")
                                    .fontWeight(.semibold)
                                    .font(.system(size:18))
                                Text("Check yourself in with the lockbox")
                                    .foregroundStyle(.gray)
                                    .font(.system(size:18))
                            }
                        }.padding(.horizontal)
                    }
                    }.padding(.horizontal)
                
                                VStack {
                                    Spacer()
                                    HStack {
                                        Text("$32 nigth")
                                            .bold()
                                            .font(.system(size:25))
                                            .padding(.horizontal)
                                        Spacer()

                                        Button(action: {
                                        }) {
                                            Text("Reservar")
                                                .foregroundColor(.white)
                                                .bold()
                                                .padding()
                                                .background(Color.airbnbPrimary)
                                                .cornerRadius(8)
                                                .padding(.horizontal)
                                        }
                                    }
                                }
                            }
                            .edgesIgnoringSafeArea(.top)
                        }
                    }
                }


#Preview {
    DetailView()
}
