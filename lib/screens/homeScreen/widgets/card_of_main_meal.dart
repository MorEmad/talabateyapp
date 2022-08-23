
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../data/mydata.dart';

class CardMainMeal extends StatelessWidget {
  String restNmame;
  String img;
  String loc;
  String evaluation;
  String deliveryPrice;
  String minOrder;

  CardMainMeal({
    Key? key,
    required this.restNmame,
    required this.img,
    required this.loc,
    required this.evaluation,
    required this.deliveryPrice,
    required this.minOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, right: 29, bottom: 16),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: ExactAssetImage(img), fit: BoxFit.cover),
                color: primaryColor,
              ),
            ),
            Positioned(
              top: 55,
              right: 45,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.delivery_dining_outlined,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "الحد الادنى للطلب $minOrderد.ع",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(width: 32,),
            Text(
              restNmame,
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            )
          ],
        ),
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Text(
                  "سعر التوصيل:$deliveryPriceد.ع",
                  style: TextStyle(color: Colors.grey),
                ),
                const Icon(
                  Icons.delivery_dining_outlined,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  evaluation,
                  style: TextStyle(color: Colors.grey),
                ),
                const Icon(
                  Icons.tag_faces_outlined,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  loc,
                  style: TextStyle(color: Colors.grey),
                ),
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  static Container mainMealListview() {
    return Container(
        height: 450,
        width: double.infinity,
        child: ListView.builder(
          //scrollDirection: Axis.horizontal,
          itemCount: listMainMeal.length,
          itemBuilder: (context, index) => CardMainMeal(
            img: listMainMeal[index].img,
            minOrder: listMainMeal[index].minOrder,
            loc: listMainMeal[index].loc,
            deliveryPrice: listMainMeal[index].deliveryPrice,
            evaluation: listMainMeal[index].evaluation,
            restNmame: listMainMeal[index].restNmame,
          ),
        ));
  }
}