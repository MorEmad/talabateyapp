

import 'package:flutter/cupertino.dart';

import '../../../constant/colors.dart';
import '../../../data/mydata.dart';

class CardMostPopularRestaurants extends StatelessWidget {
  CardMostPopularRestaurants({
    Key? key,
    required this.img,
    required this.restNmae,
  }) : super(key: key);

  String img;
  String restNmae;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16,right: 16,left: 16),
          height: 110,
          width: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: primaryColor,
              image: DecorationImage(
                  image: ExactAssetImage(img),
                  fit: BoxFit.cover
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16,bottom: 8),
          child: Text(restNmae,style: TextStyle(color: primaryColor,fontSize: 24,fontWeight: FontWeight.w500),),
        )
      ],
    );
  }
 static Container PopularRestListview() {
    return Container(
        height: 200,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: listMostPopularRest.length,
          itemBuilder: (context, index) => CardMostPopularRestaurants(
              img:listMostPopularRest[index].img,
              restNmae: listMostPopularRest[index].restNmae
          ),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 16,
          ),
        ));
  }
}
