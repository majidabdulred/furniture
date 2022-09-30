import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';
import 'package:furniture/pages/page2.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text("CART",style: TextStyle(fontFamily: "Poppins",fontSize: 24,fontWeight: FontWeight
              .w500,color: Colors.black),),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: ()=>Get.back(),
          icon: Icon(Icons.arrow_back_outlined,color: Colors.black,),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,))
        ],
      ),
    bottomNavigationBar: Container(
      padding: EdgeInsets.only(left: 31*Dim.w1,right: 21*Dim.w1,top: 13*Dim.h1,bottom: 13*Dim.h1),
      height: Dim.h1*102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
        color: AppColor.black
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total : 2",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500,fontSize:
              12,color: Colors.white.withOpacity(0.45))),
              Text("\$2990.00",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w700,fontSize:
              20,color: Colors.white))
            ],
          ),
          Center(child:
            Container(
              height: 33*Dim.h1,
              width: 186*Dim.w1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.yellow
              ),
              child: Center(
                child: Text("Proceed To Checkout",
                style: TextStyle(fontFamily: "Inter",fontWeight: FontWeight.w500,fontSize: 16*Dim.w1,color:
                Colors.white),),
              ),
            ),)
        ],
      )
      ,),
    body: Padding(
      padding: EdgeInsets.only(left: Dim.w1*30,right: Dim.w1*30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20*Dim.h1,),
            ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                separatorBuilder: (context,index)=>(Divider()),
                itemBuilder: (context,index){
                  return Stack(
                    children: [
                      Container(
                        height:Dim.h1*111,
                        width: Dim.w1*368,
                        decoration: BoxDecoration(
                          color: AppColor.black,
                          borderRadius: BorderRadius.circular(35*Dim.h1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: Dim.w1*13,right: Dim.w1*14),
                                height: 36 * Dim.h1,
                                width: 36 * Dim.h1,
                                decoration: BoxDecoration(
                                  color: AppColor.yellow,
                                  borderRadius: BorderRadius.circular(4 * Dim.w1),
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.check_box, color: Colors.black, size: 26 * Dim.w1))),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Container(
                                padding: EdgeInsets.all(3*Dim.h1),
                                height: 84*Dim.h1,
                                width: 84*Dim.w1,
                                color: AppColor.grey,
                                child: Image.asset("images/61Zbl6keClS.png",fit: BoxFit.contain,),
                              ),
                            ),
                            SizedBox(width: Dim.w1*16,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Modern Chair",style: TextStyle(fontFamily: "Poppins",fontSize: 16,
                                    fontWeight: FontWeight.w500,color: Colors.white),),
                                Text("Arm Chair",style: TextStyle(fontFamily: "Poppins",fontSize: 12,
                                    fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.45),),),
                                Text("\$1,650.00",style: TextStyle(fontFamily: "Poppins",fontSize: 14,
                                    fontWeight: FontWeight.w400,color: Colors.white),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 24*Dim.w1,
                        bottom: 19*Dim.h1,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Container(
                                height: Dim.h1 * 33,
                                width: Dim.w1 * 33,
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
                                height: Dim.h1 * 33,
                                width: Dim.w1 * 33,
                                color: AppColor.yellow,
                                child: Icon(Icons.add_circle, color: Colors.black, size: 25),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
            ),
            SizedBox(height: 96*Dim.h1,),
            Text("Recent View",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500,fontSize:
            16),),
            SizedBox(height: 10*Dim.h1,),
            Wrap(runSpacing: 48 * Dim.h1, spacing: 30 * Dim.w1, children: List.generate(5, (index) =>
                SingleItemView(index))),

          ],
        ),
      ),
    ),
    );

  }
}
