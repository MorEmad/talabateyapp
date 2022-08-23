
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../data/mydata.dart';

class CardofTextCatogary extends StatelessWidget {
  CardofTextCatogary({
    Key? key,
    required this.index,
    required this.txt,
    required this.icon
  }) : super(key: key);
  String txt;
  IconData icon;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.only(left: 8,right: 8,),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:(index!=listTextCatocary.length-1)?(Colors.grey.withOpacity(0.1)): primaryColor
      ),
      child: Row(

        children: [
          Text(txt,style: TextStyle(color: (index!=listTextCatocary.length-1)?(Colors.grey): Colors.white),),
          SizedBox(width: 4,),
          Icon(icon,color: (index!=listTextCatocary.length-1)?(Colors.grey): (Colors.white),),
        ],
      ),
    );
  }

  static  Container textCatocaryListview() {
    return Container(
        height: 35,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listTextCatocary.length,
          itemBuilder: (context, index) => CardofTextCatogary(
            txt: listTextCatocary[index].title,
            index: index, icon:listTextCatocary[index].icon ,
          ),

        ));
  }

}
