import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';
import 'package:furniture/controller/page2b_control.dart';
import 'package:furniture/views/TextWidgets.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  MyTabController myTabController = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: Dim.h1 * 80,
            flexibleSpace: Container(
              color: Colors.white,
              // padding: EdgeInsets.only(left: 20 * Dim.w1, top: 76 * Dim.h1),
              alignment: Alignment.bottomCenter,
              child: FutureKing()),
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Container(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                  size: 30,
                ),
              ),
            ),
          ],
          leading: Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: AppColor.black,
                size: 30,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Center(child: FutureKing()),
              SizedBox(
                height: Dim.h1 * 400,
                width: Dim.w1 * 400,
                child: FittedBox(
                  child: Image.asset(
                    'images/61Z2OArk4kL 1big.png',
                  ),
                ),
              ),
              SizedBox(
                height: Dim.h1 * 23,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 30,right: 35,top :34),
                  decoration: BoxDecoration(
                      color: AppColor.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(53), topRight: Radius.circular(53))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Modern Chair -+1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Modern Chair",style: TextStyle(color: Colors.white,fontFamily: "Poppins",
                              fontWeight:FontWeight.w500,fontSize: 24 ),),
                          // -1+
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Container(
                                  height: Dim.h1 * 35,
                                  width: Dim.w1 * 35,
                                  color: AppColor.yellow,
                                  child: Icon(Icons.remove_circle, color: Colors.black, size: 25),
                                ),
                              ),

                              SizedBox(width: Dim.w1*12,),
                              Text("1",style: TextStyle(fontFamily: "Poppins",fontSize: 24,fontWeight:
                              FontWeight.w500,color: Colors.white),),
                              SizedBox(width: Dim.w1*12,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Container(
                                  height: Dim.h1 * 35,
                                  width: Dim.w1 * 35,
                                  color: AppColor.yellow,
                                  child: Icon(Icons.add_circle, color: Colors.black, size: 25),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Text("\$1,650.00",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),
                      SizedBox(height: 17*Dim.h1,),
                      // Colors O O O
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height:Dim.h1*26,
                            child: Text("Colors",style: TextStyle(fontFamily: "Colors",fontSize: 15,fontWeight:
                                  FontWeight.w500,color: Colors.white ),),
                          ),
                          SizedBox(height: 3*Dim.h1,),
                          // O O O
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: Dim.w1*30),
                                width: 35*Dim.w1,
                                height: 35*Dim.w1,
                                decoration: BoxDecoration(
                                  color: Color(0xfff2ae00),
                                  shape: BoxShape.circle
                                )
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: Dim.w1*30),

                                  width: 35*Dim.w1,
                                  height: 35*Dim.w1,
                                  decoration: BoxDecoration(
                                      color: Color(0xff16b813),
                                      shape: BoxShape.circle
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: Dim.w1*30),

                                  width: 35*Dim.w1,
                                  height: 35*Dim.w1,
                                  decoration: BoxDecoration(
                                      color: Color(0xff700083),
                                      shape: BoxShape.circle
                                  )
                              )
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 26*Dim.h1,),
                      // Details
                      SizedBox(
                        height: 21*Dim.h1,
                        child: Text("Details",style: TextStyle(fontFamily: "Colors",fontSize: 15,
                            fontWeight:
                            FontWeight.w500,color: Colors.white ),),
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      // Description
                      Expanded(child: Text(
                        "Explore Our Fresh Modern Furniture At Low Prices. The Quality You Want At Prices You "
                            "Love. Restyle Your Home For A Fresh Look! Explore Our Fresh New Furniture "
                            "Styles At...",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color:Colors.white

                        ),
                      ),),
                      // Container(
                      //   padding: EdgeInsets.only(bottom: 10),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text("\$1,650.00",
                      //       style: TextStyle(
                      //         fontFamily: "Poppins",
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w700,
                      //         color: Colors.white
                      //       ),),
                      //       Container(
                      //         height: Dim.h1*35,
                      //         width: Dim.w1*147,
                      //         decoration: BoxDecoration(
                      //           color:AppColor.yellow,
                      //           borderRadius: BorderRadius.circular(14)
                      //         ),
                      //         child: Center(
                      //           child: Text("Add To Cart",
                      //           style: TextStyle(
                      //             fontFamily: "Poppins",
                      //             fontWeight: FontWeight.w600,
                      //             fontSize: 16,
                      //             color: Colors.white
                      //           ),),
                      //         ),
                      //       )
                      //
                      //     ],
                      //   ),
                      // )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: Container(
        //
        //   height: 50,
        //   color: AppColor.black,
        // ),
        );
  }
}
