import 'package:flutter/material.dart';

class Producto {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Producto({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Producto> producte = [
  Producto(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Producto(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Producto(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Producto(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Producto(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Producto(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

class Product {
  final String name, vendeur, categorie, description, photo;
  final int price, size;
  Product({
    required this.name,
    required this.vendeur,
    required this.price,
    required this.size,
    required this.categorie,
    required this.description,
    required this.photo,
  });
}

List<Product> products = [
  Product(
    name: "Gucci",
    vendeur: "Auguste",
    price: 4,
    size: 12,
    categorie: "mode",
    description:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    photo: "assets/images/bag_1.png",
  ),
  Product(
    name: "Hermes",
    vendeur: "Auguste",
    price: 19,
    size: 12,
    categorie: "mode",
    description: dummyText,
    photo: "assets/images/bag_2.png",
  ),
  Product(
    name: "Dolce Gabana",
    vendeur: "Auguste",
    price: 205,
    size: 12,
    categorie: "mode",
    description: dummyText,
    photo: "assets/images/bag_3.png",
  ),
  Product(
    name: "Christian Dior",
    vendeur: "Auguste ILBOUDO",
    price: 500,
    size: 2,
    categorie: "mode",
    description: dummyText,
    photo: "assets/images/bag_4.png",
  ),
  Product(
    name: "Rose",
    vendeur: "Auguste",
    price: 234,
    size: 12,
    categorie: "mode",
    description: dummyText,
    photo: "assets/images/bag_5.png",
  ),
  Product(
    name: "Noire",
    vendeur: "Auguste ILBOUDO",
    price: 234,
    size: 12,
    categorie: "mode",
    description: dummyText,
    photo: "assets/images/bag_6.png",
  ),
  Product(
    name: "Manette",
    vendeur: "Auguste",
    price: 250,
    size: 12,
    categorie: "sac",
    description: dummyText,
    photo: "assets/categories/pc_1.png",
  ),
  Product(
    name: "PS4",
    vendeur: "Auguste",
    price: 103,
    size: 12,
    categorie: "sac",
    description: dummyText,
    photo: "assets/categories/pc_5.png",
  ),
  Product(
    name: "Audi",
    vendeur: "Auguste ILBOUDO",
    price: 103,
    size: 12,
    categorie: "voiture",
    description: dummyText,
    photo: "assets/categories/1.jpg",
  ),
  Product(
    name: "BMW",
    vendeur: "Auguste",
    price: 103,
    size: 12,
    categorie: "voiture",
    description: dummyText,
    photo: "assets/categories/2.jpg",
  ),
  Product(
    name: "Audi",
    vendeur: "Auguste",
    price: 103,
    size: 12,
    categorie: "voiture",
    description: dummyText,
    photo: "assets/categories/3.jpg",
  ),
  Product(
    name: "PS4-blanc",
    vendeur: "Auguste",
    price: 103,
    size: 12,
    categorie: "appareil",
    description: dummyText,
    photo: "assets/categories/pc_5.png",
  ),
  Product(
    name: "PS4-Profile",
    vendeur: "Auguste ILBOUDO",
    price: 103,
    size: 12,
    categorie: "appareil",
    description: dummyText,
    photo: "assets/categories/pc_3.png",
  ),
  Product(
    name: "PS4-Violet",
    vendeur: "Auguste",
    price: 103,
    size: 12,
    categorie: "appareil",
    description: dummyText,
    photo: "assets/categories/pc_1.png",
  ),
];

class Gateau {
  final String name, imgPath, context;
  final double price;
  final bool added, isFavorite;

  Gateau({
    required this.name,
    required this.price,
    required this.imgPath,
    required this.context,
    required this.added,
    required this.isFavorite,
  });
}

List<Gateau> gateau = [
  Gateau(
    name: "Cookie mint",
    isFavorite: false,
    price: 3.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookiemint.jpg",
  ),

    Gateau(
    name: "Cookie cream",
    isFavorite: true,
    price: 5.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookiecream.jpg",
  ),

      Gateau(
    name: "Cookie classic",
    isFavorite: false,
    price: 1.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookieclassic.jpg",
  ),

      Gateau(
    name: "Cookie choco",
    isFavorite: false,
    price: 2.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookiechoco.jpg",
  ),
];



class Cake {
  final String name, imgPath, context;
  final double price;
  final bool added, isFavorite;

  Cake({
    required this.name,
    required this.price,
    required this.imgPath,
    required this.context,
    required this.added,
    required this.isFavorite,
  });
}

List<Cake> cake = [
    Cake(
    name: "Cookie classic",
    isFavorite: false,
    price: 1.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookieclassic.jpg",
  ),
  /*Cake(
    name: "Cookie cream",
    isFavorite: true,
    price: 5.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookievan.jpg",
  ),*/

  Cake(
    name: "Cookie mint",
    isFavorite: false,
    price: 3.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookiemint.jpg",
  ),

  Cake(
    name: "Cookie choco",
    isFavorite: false,
    price: 2.99,
    added: true,
    context:
        "Lorem Dolor set simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    imgPath: "assets/cookiechoco.jpg",
  ),
];
