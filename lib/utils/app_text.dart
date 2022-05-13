import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppText {
  AppText._();

  static text(String text,
      {Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      TextDecoration? decoration,
      String? fontFamily,
      TextAlign? textAlign}) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.left,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        decoration: decoration ?? TextDecoration.none,
        fontFamily: fontFamily ?? 'Lato',
      ),
    );
  }

  static textSpan(
    String text, {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    String? fontFamily,
    Function()? onTap,
  }) {
    return TextSpan(
      text: text,
      recognizer: TapGestureRecognizer()..onTap = onTap,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        decoration: decoration ?? TextDecoration.none,
        fontFamily: fontFamily ?? 'Lato',
      ),
    );
  }
}
