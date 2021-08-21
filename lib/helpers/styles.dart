import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

abstract class TextStyles {
  static TextStyle get title {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
            color: AppColors.darkblue,
            fontWeight: FontWeight.bold,
            fontSize: 40.0));
  }

  static TextStyle get subtitle {
    return GoogleFonts.economica(
        textStyle: TextStyle(
            color: AppColors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30.0));
  }

  static TextStyle get listTitle {
    return GoogleFonts.economica(
        textStyle: TextStyle(
            color: AppColors.green,
            fontWeight: FontWeight.bold,
            fontSize: 25.0));
  }

  static TextStyle get navTitle {
    return GoogleFonts.poppins(
        textStyle:
            TextStyle(color: AppColors.darkblue, fontWeight: FontWeight.bold));
  }

  static TextStyle get navTitleMaterial {
    return GoogleFonts.poppins(
        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold));
  }

  static TextStyle get body {
    return GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.darkgray, fontSize: 16.0));
  }

  static TextStyle get bodyLightBlue {
    return GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.lightblue, fontSize: 16.0));
  }

  static TextStyle get bodyRed {
    return GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.red, fontSize: 16.0));
  }

  static TextStyle get picker {
    return GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.darkgray, fontSize: 35.0));
  }

  static TextStyle get link {
    return GoogleFonts.roboto(
        textStyle: TextStyle(
            color: AppColors.green,
            fontSize: 16.0,
            fontWeight: FontWeight.bold));
  }

  static TextStyle get suggestion {
    return GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.lightgray, fontSize: 14.0));
  }

  static TextStyle get error {
    return GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.red, fontSize: 12.0));
  }

  static TextStyle get buttonTextLight {
    return GoogleFonts.roboto(
        textStyle: TextStyle(
            color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold));
  }

  static TextStyle get buttonTextDark {
    return GoogleFonts.roboto(
        textStyle: TextStyle(
            color: AppColors.darkgray,
            fontSize: 17.0,
            fontWeight: FontWeight.bold));
  }
}

abstract class BaseStyles {
  static double get borderRadius => 25.0;

  static double get borderWidth => 2.0;

  static double get listFieldHorizontal => 25.0;

  static double get listFieldVertical => 8.0;

  static double get animationOffset => 2.0;

  static EdgeInsets get listPadding {
    return EdgeInsets.symmetric(
        horizontal: listFieldHorizontal, vertical: listFieldVertical);
  }

  static List<BoxShadow> get boxShadow {
    return [
      BoxShadow(
        color: AppColors.darkgray.withOpacity(.5),
        offset: Offset(1.0, 2.0),
        blurRadius: 2.0,
      )
    ];
  }

  static List<BoxShadow> get boxShadowPressed {
    return [
      BoxShadow(
        color: AppColors.darkgray.withOpacity(.5),
        offset: Offset(1.0, 1.0),
        blurRadius: 1.0,
      )
    ];
  }

  static Widget iconPrefix(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(icon, size: 35.0, color: AppColors.lightblue),
    );
  }
}
