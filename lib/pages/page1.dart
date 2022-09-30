// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';
import 'package:furniture/pages/HomeView.dart';
import 'package:furniture/views/TextWidgets.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dim.h1 * 74, left: Dim.w1 * 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Decorate home with",
                    style: TextStyle(fontFamily: "Poppins", fontSize: Dim.w1 * 24, fontWeight: FontWeight.w600),
                  ),
                  FutureKing()
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  HomeView(),
                );
              },
              child: Container(
                width: Dim.w1 * 314,
                height: Dim.h1 * 52,
                margin: EdgeInsets.only(bottom: Dim.h1 * 56),
                decoration: BoxDecoration(color: AppColor.black, borderRadius: BorderRadius.circular(12)),
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Text(
                    "Get Started",
                    style:
                        TextStyle(fontFamily: "Inter", fontWeight: FontWeight.w500, fontSize: Dim.h1 * 26, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
