//
//  PlaceViewModel.swift
//  airbnb_arguedas
//
//  Created by MAC46 on 15/12/23.
//

import Foundation
import MapKit

class PlaceViewModel: ObservableObject {
    @Published var annotations: [PlaceCoordinate] = []
    
    func loadData() async {
        guard let url = URL(string: "https://airbnb-api-b-seven.vercel.app/airbnb") else {
            print("URL inválida")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(Airbnb.self, from: data)
            
            // Mapear cada lugar a coordenadas
            annotations = decodedData.places.map { place in
                PlaceCoordinate(name: place.name, coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude))
            }
        } catch {
            print("Error al decodificar los datos: \(error)")
        }
    }
}


//class PlaceViewModel: ObservableObject {
//    @Published var annotations: [PlaceCoordinate] = []
//    
//    init() {
////        let places = [
////            Place(name: "London", latitude: 51.507222, longitude: -0.1275),
////            Place(name: "Paris", latitude: 48.8567, longitude: 2.3508)
////        ]
////
////        for place in places {
////            annotations.append(PlaceCoordinate(
////                name: place.name,
////                coordinate: CLLocationCoordinate2D(
////                    latitude: place.latitude,
////                    longitude: place.longitude
////                )
////            ))
////        }
//    }
//    
//    func loadData() async {
//        guard let url = URL(string: "https://airbnb-api-b-seven.vercel.app/airbnb") else {
//            print("URL inválida")
//            return
//        }
//    }
//
//    
//}

