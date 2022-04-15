class Product {
  int id;
  String brandName;
  String title;
  String price;
  String image;
  String location;

  Product({
    required this.image,
    required this.location,
    required this.price,
    required this.title,
    required this.brandName,
    required this.id,
  });
}

List<Product> demoProducts = [
  Product(
      id: 1,
      location: 'Istanbul',
      title: 'Handmade vintage\nengraved plate',
      price: '150' + '€',
      brandName: 'Jazza',
      image: 'assets/images/productimage/tr1.jpg'),
  Product(
      id: 2,
      location: 'Baku',
      title: 'Handmade gold stand',
      price: '2250' + '€',
      brandName: 'Boheme',
      image: 'assets/images/productimage/tr2.jpg'),
  Product(
      id: 3,
      location: 'Paris',
      title: 'Handmade gold earrings',
      price: '950' + '€',
      brandName: 'Liqu`s',
      image: 'assets/images/productimage/tr3.jpg'),
  Product(
      id: 4,
      location: 'Berlin',
      title: 'Handmade gold bracelet',
      price: '1250' + '€',
      brandName: 'Munsiz',
      image: 'assets/images/productimage/tr4.jpg'),
  Product(
      id: 5,
      location: 'Roma',
      title: 'Handmade curtain',
      price: '250' + '€',
      brandName: 'Fazz',
      image: 'assets/images/productimage/tr5.jpeg'),
  Product(
      id: 6,
      location: 'Barcelona',
      title: 'Handmade embroidered\nbag',
      price: '50' + '€',
      brandName: 'Yafflu',
      image: 'assets/images/productimage/tr6.jpg'),
  Product(
      id: 7,
      location: 'London',
      title: 'Handmade lighting',
      price: '450' + '€',
      brandName: 'Nakatz',
      image: 'assets/images/productimage/tr7.jpg'),
  Product(
      id: 8,
      location: 'Istanbul',
      title: 'Handmade engraved\nplate',
      price: '150' + '€',
      brandName: 'Jazza',
      image: 'assets/images/productimage/tr8.jpg'),
];
