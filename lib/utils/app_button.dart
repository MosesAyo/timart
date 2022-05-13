import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppButton {
  AppButton._();

  static Widget button(
      {required Widget widget,
      required Function() onPressed,
      Color? backgroundColor,
      Size? minimumSize,
      BorderSide? borderSide,
      BorderRadiusGeometry? borderRadius,
      EdgeInsetsGeometry? padding}) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.primary,
            minimumSize: minimumSize ?? const Size(0, 60),
            shape: RoundedRectangleBorder(
                side: borderSide ?? BorderSide.none,
                borderRadius: borderRadius ?? BorderRadius.circular(8)),
            padding: padding),
        onPressed: onPressed,
        child: widget);
  }
}
