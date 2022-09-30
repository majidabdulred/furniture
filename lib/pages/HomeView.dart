import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';
import 'package:furniture/pages/page2.dart';
import 'package:furniture/pages/page3.dart';
import 'package:furniture/pages/page4.dart';
import 'package:furniture/pages/page5.dart';
import 'package:get/get.dart';
class HomeViewTest extends StatelessWidget {
  int selectedpage =0;
  final _pageNo = [Page2b(),DemoPage("SELECT"),DemoPage("STAR"),Page5()];
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context,StateSetter setState)=>
        Scaffold(
          bottomNavigationBar: ConvexAppBar(
            // cornerRadius: 24,
              elevation: 10*Dim.h1,
              shadowColor: Colors.black.withOpacity(0.45),
              color: Colors.white,
              backgroundColor: Colors.white,
              height: 80*Dim.h1,
              curveSize: 0,
              // top: -30,
              style:TabStyle.react ,
              activeColor: Colors.black,
              chipBuilder: _ChipBuilder(),
              items: [
                TabItem(icon: Icon(Icons.shopping_cart,color: AppColor.black,size: 35*Dim.w1,), title: 'STO'
                    'RE',
                    fontFamily: "Poppins"),
                TabItem(icon: Icon(Icons.check_box,color: AppColor.black,size: 35*Dim.w1,), title: 'SELECT',
                    fontFamily: "Poppins"),
                // TabItem(icon: Icon(Icons.check_box,color: AppColor.black,size: 35*Dim.w1,), title: 'Selected'),
                TabItem(icon: Icon(Icons.star,color: AppColor.black,size: 35*Dim.w1,), title: 'STAR', fontFamily:
                "Poppins"),
                TabItem(icon: Icon(Icons.account_circle,color: AppColor.black,size: 35*Dim.w1,), title: 'PROFILE',
                    fontFamily: "Poppins"),
              ],
              initialActiveIndex: selectedpage,
              onTap: (int index){
                setState(() {
                  selectedpage = index;
                });
              }
          ),


          body: _pageNo[selectedpage],
        )
    );
  }
}

class HomeView extends StatelessWidget {
  int selectedpage =0;
  final _pageNo = [Page2b(),DemoPage("SELECT"),DemoPage("STAR"),Page5()];
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context,StateSetter setState)=>
        Scaffold(
          bottomNavigationBar: ConvexAppBar(
            // cornerRadius: 24,
              elevation: 10*Dim.h1,
              shadowColor: Colors.black.withOpacity(0.45),
              color: Colors.white,
              backgroundColor: Colors.white,
              height: 80*Dim.h1,
              curveSize: 0,
              // top: -30,
              style:TabStyle.react ,
              activeColor: Colors.black,
              chipBuilder: _ChipBuilder(),
              items: [
                TabItem(icon: Icon(Icons.shopping_cart,color: AppColor.black,size: 35*Dim.w1,), title: 'STO'
                    'RE',
                    fontFamily: "Poppins"),
                TabItem(icon: Icon(Icons.check_box,color: AppColor.black,size: 35*Dim.w1,), title: 'SELECT',
                    fontFamily: "Poppins"),
                // TabItem(icon: Icon(Icons.check_box,color: AppColor.black,size: 35*Dim.w1,), title: 'Selected'),
                TabItem(icon: Icon(Icons.star,color: AppColor.black,size: 35*Dim.w1,), title: 'STAR', fontFamily:
                "Poppins"),
                TabItem(icon: Icon(Icons.account_circle,color: AppColor.black,size: 35*Dim.w1,), title: 'PROFILE',
                    fontFamily: "Poppins"),
              ],
              initialActiveIndex: selectedpage,
              onTap: (int index){
                setState(() {
                  selectedpage = index;
                });
              }
          ),


          body: _pageNo[selectedpage],
        )
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

  }
}

class DemoPage extends StatelessWidget {
  final String text;
  const DemoPage(this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(text),),);
  }
}

