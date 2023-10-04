// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color color;
  final Color textColor;
  final Color fillColor;
  const CustomChip({
    Key? key,
    required this.onTap,
    required this.text,
    this.color = const Color(0xffFF8C00),
    this.textColor = const Color(0xff383838),
    this.fillColor = const Color(0xffFED8A9),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5).copyWith(left: 0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: fillColor,
          border: Border.all(
            color: color,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 10.0,
          ),
        ),
      ),
    );
  }
}
