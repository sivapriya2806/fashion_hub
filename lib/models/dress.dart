/*
class Dress {
  final String name;
  final String price;
  final String imagepath;
  final String description;

  Dress(
      {required this.name,
      required this.price,
      required this.imagepath,
      required this.description});
}
*/
import 'package:flutter/material.dart';

class Dress extends StatelessWidget {
  final String name;
  final String price;
  final String imagepath;
  final String description;

  Dress({
    required this.name,
    required this.price,
    required this.imagepath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white60,
        height: 20,
        width: 50, // set your desired width
        // set your desired height
        child: Image.asset(
          imagepath,
          fit: BoxFit.cover, // you can adjust the BoxFit property as needed
        ),
      ),
    );
  }
}
