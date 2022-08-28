import 'package:firstapp_flutter/all_constants/constants.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class RightBar extends StatelessWidget {
  final double barwidth;
  final double margTop;
  const RightBar({Key? key, required this.barwidth, required this.margTop}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height:20,
            width: barwidth,
            margin: EdgeInsets.only(top: margTop),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(10),
              bottomLeft: Radius.circular(10)
            ),color: accHex,
          ),
          
          ),
      ],
    );
  }
}