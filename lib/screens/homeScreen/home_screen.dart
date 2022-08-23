import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabateyapp/screens/homeScreen/widgets/card_of_main_meal.dart';
import 'package:talabateyapp/screens/homeScreen/widgets/card_of_popular_rest.dart';
import 'package:talabateyapp/screens/homeScreen/widgets/card_of_text_catogary.dart';
import 'package:talabateyapp/screens/homeScreen/widgets/cart_of_catogary.dart';
import '../../constant/colors.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }
  int _selectedIndex=3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.search,
          color: textColor,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 90),
          child: Row(
            children: [
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: textColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "المنصور",
                style: TextStyle(color: textColor),
              )
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_none_outlined,
            color: textColor,
            size: 26,
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        CardofCatogary.catocaryListview(),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "المحلات الاكثر شيوعا",
            style: TextStyle(color: primaryColor, fontSize: 22),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 16),
          height: 2,
          width: MediaQuery.of(context).size.width * 0.5,
          color: primaryColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.58,
          child: ListView(
            children: [
              CardMostPopularRestaurants.PopularRestListview(),
              CardofTextCatogary.textCatocaryListview(),
              CardMainMeal.mainMealListview(),

            ],
          ),
        ),

      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الحساب',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'الطلبات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'المحفظة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'الرئيسة',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        onTap: _onItemTapped,
      ),);

  }


}


