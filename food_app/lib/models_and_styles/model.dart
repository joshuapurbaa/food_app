class PopularFood {
  String imageUrl;
  String foodName;
  String description;
  String price;

  PopularFood({this.imageUrl, this.foodName, this.description, this.price});
}

final List<PopularFood> populars = [
  PopularFood(
    imageUrl: 'assets/images/pizza.png',
    foodName: 'Pizza',
    description: 'Fresh Topping',
    price: 'IDR 49.999',
  ),
  PopularFood(
    imageUrl: 'assets/images/humburger.png',
    foodName: 'Humburger',
    description: 'Tasty Flavour',
    price: 'IDR 59.999',
  ),
  PopularFood(
    imageUrl: 'assets/images/hotdog.png',
    foodName: 'Double Hot Dog',
    description: 'Best ingredients',
    price: 'IDR 39.999',
  ),
];
