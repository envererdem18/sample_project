import 'package:flutter/material.dart';

class CustomPadding extends EdgeInsets {
  const CustomPadding({double padding = 10}) : super.all(padding);

  const CustomPadding.normalHorizontal() : super.symmetric(horizontal: 16);
  const CustomPadding.normalVertical() : super.symmetric(vertical: 12);
}
