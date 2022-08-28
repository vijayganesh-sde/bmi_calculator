import 'package:firstapp_flutter/all_constants/constants.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class leftBar extends StatelessWidget {
  final double barwidth;
  final double margTop;
  const leftBar({Key? key, required this.barwidth, required this.margTop}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height:20,
            width: barwidth,
            margin: EdgeInsets.only(top: margTop),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight:Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),color: accHex,
          ),
          ),
      ],
    );
  }
}