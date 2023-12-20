//
//  TripsView.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.954593), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    @StateObject var placeViewModel = PlaceViewModel()

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: placeViewModel.annotations) {
                MapMarker(coordinate: $0.coordinate)
            }
            .onAppear {
                // Asegúrate de cargar los datos antes de mostrar el mapa
                Task {
                    await placeViewModel.loadData()
                }
            }
    
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 40,height: 40)
                }
                Spacer()
                HStack{
                    ZStack{
                        Image("item1")
                            .resizable()
                            .frame(width: 120, height: 120)
                        Spacer()
                        Image(systemName: "multiply.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(6)
                            .offset(x: -40, y: -40)
                            .opacity(100)
                            .foregroundColor(.white)

                    }

                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text("La Calera, Colombia")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 16, height: 15)
                        }
                        Spacer()
                        Text("Nov 19 - 24")
                            .font(.caption)
                            .fontWeight(.light)
                        
                        HStack{
                            Text("S/ 268 night")
                                .font(.caption)
                            Spacer()
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                            Text("4.91")
                                .font(.caption)
                                .fontWeight(.light)
                        }
                    }
                    .padding(.vertical)
                    Spacer()
                }
                .frame(height: 120)
                .background(.white)
            }
            .padding()
        }
    }
}

#Preview {
    TripsView()
}
