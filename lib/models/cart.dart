import 'package:flutter/material.dart';

import 'dress.dart';

class Cart extends ChangeNotifier {
  List<Dress> dressShop = [
    Dress(
        name: "Crop Top",
        price: "Rs. 1500",
        imagepath: "lib/images/crop.png",
        description: " Trendy, chic, perfect with high-waist"),
    Dress(
        name: "Dainty crop Top ",
        price: "Rs. 2000",
        imagepath: "lib/images/blouse11.jpg",
        description: "Elegant tops for timeless sophistication"),
    Dress(
        name: "Crop Tee",
        price: "Rs. 4000",
        imagepath: "lib/images/dress2.jpg",
        description: "Handcrafted Tees, vibrant"),
    Dress(
        name: "Crop Tee",
        price: "Rs. 1500",
        imagepath: "lib/images/dress1.jpg",
        description: " Trendy, chic, perfect with high-waist"),
    Dress(
        name: "Crop Top",
        price: "Rs. 1500",
        imagepath: "lib/images/blouse2.jpg",
        description: " Trendy, chic, perfect "),
  ];
  List<Dress> userCart = [];

  List<Dress> getDressList() {
    return dressShop;
  }

  List<Dress> getUserCart() {
    return userCart;
  }

  void addItemToCart(Dress dress) {
    userCart.add(dress);
    notifyListeners();
  }

  void removeItemFromCart(Dress dress) {
    userCart.remove(dress);
    notifyListeners();
  }
}
