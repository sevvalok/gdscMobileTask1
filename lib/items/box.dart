import 'package:flutter/material.dart';

class Product {
  final String image, title, description;

  Product({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Product> products = [
  Product(
    title: "Amsterdam",
    description: "dummyText",
    image: "assets/homePagePicture/amsterdam.png",
  ),
  Product(
    title: "Antalya",
    description: "dummyText",
    image: "assets/homePagePicture/Antalya.png",
  ),
  Product(
    title: "Office Code",
    description: "dummyText",
    image: "assets/homePagePicture/Arjentina.png",
  ),
  Product(
    title: "Office Code",
    description: "dummyText",
    image: "assets/homePagePicture/Gonoda,Rusya.png",
  ),
  Product(
    title: "Office Code",
    description: "dummyText",
    image: "assets/homePagePicture/ispanya.png",
  ),
];
