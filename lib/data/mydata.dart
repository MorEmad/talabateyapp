import 'package:flutter/material.dart';

import '../Models/my_models.dart';

List<Catogary> listCatocary = [

  Catogary(title: "ماركت", img: "assets/images/img_5.png"),
  Catogary(title: "حلويات ومعجنات", img: "assets/images/img_7.png"),
  Catogary(title: "الفواكه واخضروات", img: "assets/images/img.png"),
  Catogary(title: "بحرية", img: "assets/images/img_6.png"),
  Catogary(title: "دايت فود", img: "assets/images/img_1.png"),
  Catogary(title: "البن والقهوة", img: "assets/images/img_2.png"),
  Catogary(title: "الزهور", img: "assets/images/img_8.png"),
  Catogary(title: "المرطبات", img: "assets/images/img_4.png"),
  Catogary(title: "فطور صباحي", img: "assets/images/img_12.png"),
  Catogary(title: "المطاعم", img: "assets/images/img_3.png"),
];

List<TextCatogary>listTextCatocary=[
  TextCatogary(title:"جديد",icon: Icons.store),
  TextCatogary(title: "حصري",icon: Icons.star_border),
  TextCatogary(title:"توصيل مجاني",icon: Icons.card_giftcard),
  TextCatogary(title:"توصيل طلباتي",icon: Icons.delivery_dining_outlined),
  TextCatogary(title:"يدعم المحفظة",icon:Icons.account_balance_wallet_rounded),
  TextCatogary(title:"الكل",icon: Icons.home)
];

List<MostPopularRestaurants> listMostPopularRest=[

  MostPopularRestaurants(restNmae: "عروس دمشق", img: "assets/images/img_11.png"),
  MostPopularRestaurants(restNmae: "برجر ميكرز", img: "img_13.png"),
  MostPopularRestaurants(restNmae: "زرزور", img: "assets/images/img_9.png"),
  MostPopularRestaurants(restNmae: "سكراب", img: "assets/images/img_10.png"),
];

List<MainMeal> listMainMeal = [
  MainMeal(
      img: "assets/images/main_meal/img_4.png",
      loc: "المنصور",
      minOrder: '5,000',
      evaluation: "جيد جدا",
      deliveryPrice: "1,500", restNmame: 'برجرات'),
  MainMeal(
      img: "assets/images/main_meal/img_2.png",
      loc: "المنصور",
      minOrder: '5,000',
      evaluation: "جيد جدا",
      deliveryPrice: "1,500", restNmame: 'هايزن'),
  MainMeal(
      img: "assets/images/main_meal/img_3.png",
      loc: "المنصور",
      minOrder: '5,000',
      evaluation: "جيد جدا",
      deliveryPrice: "2,500", restNmame: 'رويال كالكسي'),
  MainMeal(
      img: "assets/images/main_meal/img_7.png",
      loc: "المنصور",
      minOrder: '5,000',
      evaluation: "جيد جدا",
      deliveryPrice: "1,500", restNmame: 'اهواك'),
  MainMeal(
      img: "assets/images/main_meal/img_5.png",
      loc: "المنصور",
      minOrder: '5,000',
      evaluation: "جيد جدا",
      deliveryPrice: "1,500", restNmame: 'خان مندي'),
];
