
import 'package:flutter/material.dart';

class Utils {
  final double height;
  final double width;
  Utils({
    this.height = 15.0,
    this.width = 0.0,
  });
  SizedBox get bodySizedBox => SizedBox(
        height: height,
        width: width,
      );
}