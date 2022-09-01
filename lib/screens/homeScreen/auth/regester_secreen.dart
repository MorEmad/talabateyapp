import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:talabateyapp/constant/colors.dart';
import 'package:talabateyapp/screens/homeScreen/home_screen.dart';

import 'my_textfield.dart';

class RegestorSecreen extends StatefulWidget {
  const RegestorSecreen({Key? key}) : super(key: key);

  @override
  State<RegestorSecreen> createState() => _RegestorSecreenState();
}

class _RegestorSecreenState extends State<RegestorSecreen> {
RxInt IsShow=1.obs ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                "assets/images/logo-removebg-preview.png",
                color: primaryColor,
                height: MediaQuery.of(context).size.width * 0.65,
              )),
              MyTextField(hint: 'الاسم', maxLength: 15,),
              MyTextField(hint: 'رقم الهاتف', maxLength: 11,),
              InkWell(
                onTap: (){
                  IsShow++;
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.arrow_drop_down_outlined,color:primaryColor,),
                    Text("اذا كان لديك رمز المشاركة اضغط هنا",style: TextStyle(color: primaryColor,fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.right,),
                  ],
                ),
              ),
              Obx(() =>IsShow%2==0?Hero(tag: "myHeto",
              child: MyTextField(hint: 'رمز المشاركة', maxLength: 15,)):Hero(tag:"myHeto",
              child: Container()), ),
              InkWell(
                onTap: ()=>Get.to(HomeScreen()),
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Text("التالي",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
