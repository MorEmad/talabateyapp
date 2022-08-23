
import 'package:flutter/cupertino.dart';

import '../../../Models/my_models.dart';
import '../../../constant/colors.dart';
import '../../../data/mydata.dart';

class CardofCatogary extends StatelessWidget {
  CardofCatogary({Key? key, required this.img, required this.title,required this.index}) : super(key: key);
  String img;
  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: primaryColor,
              image: DecorationImage(
                image: ExactAssetImage(img),
                fit: BoxFit.cover,
              )),

        ),
        Text(title,style: TextStyle(color: index!=listCatocary.length-1?textColor: primaryColor,fontSize: 18,fontWeight:index!=listCatocary.length-1? FontWeight.w300:FontWeight.bold ),)
      ],
    );
  }
  static  Container catocaryListview() {
    return Container(
        height: 130,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: listCatocary.length,
          itemBuilder: (context, index) => CardofCatogary(
            img: listCatocary[index].img,
            title: listCatocary[index].title,
            index: index,
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            width: 16,
          ),
        ));
  }
}
