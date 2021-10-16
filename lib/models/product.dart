import 'package:flutter/material.dart';
import 'package:learn_english_app/constant.dart';

class Product {
  final String name;
  final int duration;
  final IconData icon;
  bool isFav;
  final Color color;

  Product(
      {required this.name,
      required this.duration,
      required this.icon,
      this.isFav = false,
      this.color = purple});
}

List<Product> recommended = [
  Product(
    name: 'Chatting',
    duration: 5,
    icon: Icons.chat_rounded,
    color: red,
  ),
  Product(
    name: 'Listen',
    duration: 2,
    icon: Icons.headphones_rounded,
    isFav: true,
  ),
  Product(
    name: 'Speak',
    duration: 3,
    icon: Icons.mic,
    color: orange,
  ),
];
