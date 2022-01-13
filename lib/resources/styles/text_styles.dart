import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/resources/theme/sizes.dart';

class TextStyles {
  static TextStyle get title =>
      GoogleFonts.roboto(fontSize: Sizes.title, fontWeight: FontWeight.w800);
  static TextStyle get subtitle =>
      GoogleFonts.roboto(fontSize: Sizes.subtitle, fontWeight: FontWeight.w400);
}
