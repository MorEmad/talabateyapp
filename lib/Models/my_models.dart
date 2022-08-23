import 'package:flutter/cupertino.dart';

class Catogary {
  String title;
  String img;

  Catogary({
    required this.title,
    required this.img,
  });
}

class MostPopularRestaurants {
  String img;
  String restNmae;

  MostPopularRestaurants({
    required this.restNmae,
    required this.img,
  });
}

class TextCatogary {
  String title;
  IconData icon;

  TextCatogary({
    required this.title,
    required this.icon,
  });
}

class MainMeal {
  String restNmame;
  String img;
  String loc;
  String evaluation;
  String deliveryPrice;
  String minOrder;

  MainMeal({
    required this.restNmame,
    required this.img,
    required this.loc,
    required this.evaluation,
    required this.deliveryPrice,
    required this.minOrder,
  });
}

































