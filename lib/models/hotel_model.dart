class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}


final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/20220822_141422.jpg',
      name: 'Hotel 1',
      address: '498 Great Street',
      price: 234
  ),
  Hotel(
      imageUrl: 'assets/images/20220822_141354.jpg',
      name: 'Hotel 2',
      address: '8 Grt Street',
      price: 123
  ),
  Hotel(
      imageUrl: 'assets/images/20220215_164805.jpg',
      name: 'Hotel 4',
      address: '498 G Street',
      price: 276
  ),
  Hotel(
      imageUrl: 'assets/images/20220822_141422.jpg',
      name: 'Hotel3',
      address: '498 Great Street',
      price: 100
  ),
];