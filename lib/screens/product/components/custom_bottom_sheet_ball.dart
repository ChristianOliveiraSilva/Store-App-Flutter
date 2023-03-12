import 'package:flutter/material.dart';

class CustomBottomSheetBall extends StatelessWidget {
  int color;
  CustomBottomSheetBall(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}