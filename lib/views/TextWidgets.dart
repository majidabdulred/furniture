import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';

class FutureKing extends StatelessWidget {
  const FutureKing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "FURNITURE",
          style: TextStyle(fontFamily: "Poppins", fontSize: Dim.w1 * 36, fontWeight: FontWeight.w900, color: AppColor.yellow),
        ),
        Text(
          "KING",
          style: TextStyle(fontFamily: "Poppins", fontSize: Dim.w1 * 36, fontWeight: FontWeight.w400, color: AppColor.black),
        )
      ],
    );
  }
}
