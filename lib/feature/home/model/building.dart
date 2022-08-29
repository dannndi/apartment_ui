class Building {
  final String assets;
  final String name;
  final String location;
  final String about;
  final double rating;
  final int bathroom;
  final int bedroom;
  final int area;
  final int price;
  final String tag;

  Building({
    required this.assets,
    required this.name,
    required this.location,
    required this.about,
    required this.rating,
    required this.bathroom,
    required this.bedroom,
    required this.area,
    required this.price,
    required this.tag,
  });
}

final buildingsNearMe = [
  Building(
    assets: "assets/apartment-1.jpeg",
    name: "The Residences at New City",
    location: "Bali, Indonesia",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 1000,
    price: 999,
    tag: "Luxury, Family",
  ),
  Building(
    assets: "assets/apartment-2.jpeg",
    name: "Elevate Tower",
    location: "NYC, USA",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 5,
    bathroom: 5,
    bedroom: 6,
    area: 2300,
    price: 1599,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/apartment-3.png",
    name: "1042 on Machigan",
    location: "Chicago, USA",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 5,
    bathroom: 3,
    bedroom: 5,
    area: 1700,
    price: 1399,
    tag: "Office, Luxury",
  ),
  Building(
    assets: "assets/apartment-4.jpeg",
    name: "Residence Park",
    location: "Jakarta, Indonesia",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 900,
    price: 899,
    tag: "Family, Apartment",
  ),
];

final popularInIndonesia = [
  Building(
    assets: "assets/apartment-1.jpeg",
    name: "The Residences at New City",
    location: "Bali, Indonesia",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 1000,
    price: 999,
    tag: "Luxury, Family",
  ),
  Building(
    assets: "assets/apartment-2.jpeg",
    name: "Elevate Tower",
    location: "NYC, USA",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 5,
    bedroom: 6,
    area: 2300,
    price: 1599,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/apartment-3.png",
    name: "1042 on Machigan",
    location: "Chicago, USA",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 5,
    area: 1700,
    price: 1399,
    tag: "Office, Luxury",
  ),
  Building(
    assets: "assets/apartment-4.jpeg",
    name: "Residence Park",
    location: "Jakarta, Indonesia",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 900,
    price: 899,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/apartment-1.jpeg",
    name: "The Residences at New City",
    location: "Bali, Indonesia",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 1000,
    price: 999,
    tag: "Luxury, Family",
  ),
  Building(
    assets: "assets/apartment-2.jpeg",
    name: "Elevate Tower",
    location: "NYC, USA",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 5,
    bedroom: 6,
    area: 2300,
    price: 1599,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/apartment-3.png",
    name: "1042 on Machigan",
    location: "Chicago, USA",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 5,
    area: 1700,
    price: 1399,
    tag: "Office, Luxury",
  ),
  Building(
    assets: "assets/apartment-4.jpeg",
    name: "Residence Park",
    location: "Jakarta, Indonesia",
    about:
        "This property is managed by Beztak, 2022 recipient of the US Best Managed Companies for the third year in a row, sponsored by Deloitte Private and The Wall Street Journal. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Chicago, Illinois The Residences at NewCity offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 900,
    price: 899,
    tag: "Family, Apartment",
  ),
];
