class Food {
  final String image;
  final String name;
  final double price;
  final double rating;

  Food({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  });
}

List<Food> foodItems = [
  Food(
    image: 'images/sushi rice.png',
    name: "Original Sushi",
    price: 21.00,
    rating: 4.8,
  ),
  Food(
    image: 'images/shrimp.png',
    name: "Shrimp Sushi",
    price: 21.00,
    rating: 4.8,
  ),
  Food(
    image: 'images/sashimi.png',
    name: "Sashimi Sushi",
    price: 21.00,
    rating: 4.8,
  ),
];
