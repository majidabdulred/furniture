import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
        Text("PROFILE",style: TextStyle(fontFamily: "Poppins",fontSize: 24,fontWeight: FontWeight
            .w500,color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_outlined,color: Colors.black,size: 30*Dim.w1,),
        ),
      ),

      body: Container(
        // color: Colors.green,
        child: Padding(
          padding:  EdgeInsets.all(30*Dim.h1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius:35*Dim.w1,
                    backgroundColor: AppColor.grey,
                    child: Icon(Icons.account_circle
                      ,color: Colors.black,size: 50*Dim.w1,),
                  ),
                  Text("Michael Rose",style: TextStyle(fontFamily: "Poppins",fontSize: 20*Dim.w1,

                      fontWeight: FontWeight.w500),),
                  Text("michaelrose909@gmail.com",style: TextStyle(fontFamily: "Poppins",fontSize: 12*Dim.w1,
                      fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.45)),),
                ],
              ),),
              SizedBox(height: 30*Dim.h1,),
              Text("Account",style: TextStyle(fontFamily: "Poppins",fontSize: 20*Dim.w1,
                  fontWeight: FontWeight.w600,color: Colors.black.withOpacity(.47)),),

              SizedBox(height: 10*Dim.h1,),
              Column(
                children: [
                  LabelWidget("Settings",Icons.settings),
                  SizedBox(height: 18*Dim.h1,),
                  LabelWidget("Notification",Icons.notifications),
                  SizedBox(height: 18*Dim.h1,),
                  LabelWidget("Order History",Icons.info)
                ],
              ),
              SizedBox(height: 18*Dim.h1,),
              Text("Privacy",style: TextStyle(fontFamily: "Poppins",fontSize: 20*Dim.w1,
                  fontWeight: FontWeight.w600,color: Colors.black.withOpacity(.47)),),

              SizedBox(height: 10*Dim.h1,),
              Column(
                children: [
                  LabelWidget("Privacy & Policy",Icons.lock),
                  SizedBox(height: 18*Dim.h1,),
                  LabelWidget("Terms & Condition",Icons.remove_circle),
                  SizedBox(height: 18*Dim.h1,),
                  LabelWidget("Log Out",Icons.logout)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String name;
  final IconData iconData;
  const LabelWidget(
      this.name,
      this.iconData,
      {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Dim.w1*14,right: Dim.w1*10),
      height: 48*Dim.h1,
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(12*Dim.w1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4*Dim.w1),
                child: Container(
                  height: 35*Dim.h1,
                  width: 35*Dim.w1,
                  color: AppColor.yellow,
                  child: Icon(iconData,size: 30*Dim.w1,),),
              ),
              SizedBox(width: 6,),
              Text(name,style: TextStyle(fontFamily: "Poppins",fontSize: 20*Dim.w1,
                fontWeight: FontWeight.w500,color: Colors.white,))
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(4*Dim.w1),
            child: Container(
              height: 35*Dim.h1,
              width: 35*Dim.w1,
              color: AppColor.yellow,
              child: Icon(Icons.arrow_forward_ios,size: 25*Dim.w1,),),
          )

        ],
      ),
    );
  }
}

class _ChipBuilder extends ChipBuilder { 
  @override
  Widget build(BuildContext context, Widget child, int index, bool active) {
      if (active){
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10*Dim.h1),
              decoration: BoxDecoration(
                  color: AppColor.grey,
                  shape: BoxShape.circle,
                  // border: Border.all(color: Colors.black),
                  boxShadow: [BoxShadow(
                    // blurRadius: 1,
                      spreadRadius: 2*Dim.h1,
                      offset: Offset(-10*Dim.w1, 4*Dim.h1),
                      color: Colors.black.withOpacity(0.25)
                  )]
              ),
              child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: AppColor.yellow,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black,),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 20*Dim.h1),
                child: child,
              ),
            )
          ],
        );
      }
      else
        {return child;}
    //   Stack(
    //   alignment: Alignment.center,
    //   children:  [
    //     child,
    //     Positioned.fill(
    //       child: Align(
    //         alignment: Alignment.topRight,
    //         child: Container(
    //           margin: EdgeInsets.only(top: 10, right: 10),
    //           padding: EdgeInsets.only(left: 4, right: 4),
    //           child: Icon(Icons.access_alarm, color: Colors.redAccent),
    //         ),
    //       ),
    //     )
    //   ],
    // );
    ;
  }
}
