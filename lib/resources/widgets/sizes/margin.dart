import 'package:flutter/material.dart';

class CustomMargin extends EdgeInsets {
  const CustomMargin({double margin = 10}) : super.all(margin);

  const CustomMargin.normalHorizontal() : super.symmetric(horizontal: 16);
  const CustomMargin.normalVertical() : super.symmetric(vertical: 12);
}
