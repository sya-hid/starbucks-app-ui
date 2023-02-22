import 'package:starbucks_app_ui/models/category_model.dart';

class Product {
  final String image, name;
  final double price;
  final Category category;

  Product(
      {required this.category,
      required this.image,
      required this.name,
      required this.price});
}

List<Product> products = [
  Product(
      image: 'bakery/Blueberry Muffin.png',
      name: 'Blueberry Muffin',
      category: categories[3],
      price: 13),
  Product(
      image: 'bakery/Blueberry Scone.png',
      name: 'Blueberry Scone',
      category: categories[3],
      price: 12),
  Product(
      image: 'bakery/Butter Croissant.png',
      name: 'Butter Croissant',
      category: categories[3],
      price: 10),
  Product(
      image: 'bakery/Petite Vanilla Bean Scone.png',
      name: 'Petite Vanilla Bean Scone',
      category: categories[3],
      price: 13),
  Product(
      image: 'bakery/Pumpkin Cream Cheese Muffin.png',
      category: categories[3],
      name: 'Pumpkin Cream Cheese Muffin',
      price: 15),
  Product(
      image: 'drinks/Evolution Fresh® Mighty Watermelon.png',
      name: 'Evolution Fresh® Mighty Watermelon',
      category: categories[1],
      price: 18),
  Product(
      image: 'drinks/Caramel Brulée Frappuccino® Blended Beverage.png',
      name: 'Caramel Brulée Frappuccino® Blended Beverage',
      category: categories[1],
      price: 18),
  Product(
      image: 'drinks/Mango Dragonfruit Starbucks Refreshers® Beverage.png',
      name: 'Mango Dragonfruit Starbucks Refreshers® Beverage',
      category: categories[1],
      price: 18),
  Product(
      image: 'drinks/Pink Drink Starbucks Refreshers® Beverage.png',
      category: categories[1],
      name: 'Pink Drink Starbucks Refreshers® Beverage',
      price: 18),
  Product(
      image: 'drinks/Pistachio Frappuccino® Blended Beverage.png',
      category: categories[1],
      name: 'Pistachio Frappuccino® Blended Beverage',
      price: 18),
  Product(
      image: 'drinks/Starbucks BAYA™ Energy Mango Guava.png',
      category: categories[1],
      name: 'Starbucks BAYA™ Energy Mango Guava',
      price: 18),
  Product(
      image: 'drinks/Strawberry Crème Frappuccino® Blended Beverage.png',
      category: categories[1],
      name: 'Strawberry Crème Frappuccino® Blended Beverage',
      price: 18),
  Product(
      image: 'drinks/White Chocolate Crème Frappuccino® Blended Beverage.png',
      category: categories[1],
      name: 'White Chocolate Crème Frappuccino® Blended Beverage',
      price: 18),
  Product(
      image: 'hot coffee/Caffè Americano.png',
      category: categories[0],
      name: 'Caffè Americano',
      price: 18),
  Product(
      image: 'hot coffee/Caffè Misto.png',
      name: 'Caffè Mistoe',
      category: categories[0],
      price: 18),
  Product(
      image: 'hot coffee/Cappuccino.png',
      name: 'Cappuccino',
      category: categories[0],
      price: 18),
  Product(
      image: 'hot coffee/Featured Medium Roast - Pike Place® Roast.png',
      category: categories[0],
      name: 'Featured Medium Roast - Pike Place® Roast',
      price: 18),
  Product(
      image: 'hot coffee/Honey Almondmilk Flat White.png',
      category: categories[0],
      name: 'Honey Almondmilk Flat White',
      price: 18),
  Product(
      category: categories[2],
      image: 'hot teas/Chai Tea Latte.png',
      name: 'Chai Tea Latte',
      price: 18),
  Product(
      image: 'hot teas/Chai Tea.png',
      category: categories[2],
      name: 'Chai Tea',
      price: 18),
  Product(
      image: 'hot teas/Emperor\'s Clouds & Mist®.png',
      category: categories[2],
      name: 'Emperor\'s Clouds & Mist®',
      price: 18),
  Product(
      image: 'hot teas/Honey Citrus Mint Tea.png',
      category: categories[2],
      name: 'Honey Citrus Mint Tea',
      price: 18),
  Product(
      image: 'hot teas/Matcha Tea Latte.png',
      category: categories[2],
      name: 'Matcha Tea Latte',
      price: 18),
];
