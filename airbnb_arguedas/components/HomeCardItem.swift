import SwiftUI

struct HomeCardItem: View {
    let place: Place

    var body: some View {
        VStack(alignment: .leading, spacing: 13) {
            AsyncImage(url: URL(string: place.image_url)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 390, height: 220)
            .cornerRadius(12)

            HStack {
                Text("\(place.location.city), \(place.location.country)")
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                Spacer()
                Image(systemName: "star.fill").foregroundColor(.orange)
                Text("\(place.rating, specifier: "%.2f")")
            }

            Text("Profesional Host")
                .fontWeight(.light)
                .foregroundStyle(.gray)

            HStack {
                Text("Fecha tour: ").foregroundStyle(.gray)
                Text(place.date)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
            }

            Text("S/\(place.price, specifier: "%.2f") total")
                .fontWeight(.semibold)
        }
        .padding(.horizontal)
    }
}

struct HomeCardItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardItem(place: Place(
            name: "Modern Art Loft",
            rating: 4.5,
            location: Location(country: "United States", city: "New York"),
            image_url: "https://cdn.tiqets.com/wordpress/blog/wp-content/uploads/2017/08/03134557/24-hours-in-new-york-1-1024x570.jpg",
            date: "2023-01-15",
            price: 120.99,
            latitude: 40.7128,
            longitude: -74.0060
        ))
    }
}
