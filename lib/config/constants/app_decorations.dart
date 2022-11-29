import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppDecorations {
  static BoxDecoration defDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(10.r),
    color:  Colors.black,
  );

  static ButtonStyle buttonStyle({
    double? borderRadius,
    Color? bgColor,
    EdgeInsets? padding,
    BorderSide? border,
    Size? size,
    Color? overlayColor
  }) {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          side: border ?? BorderSide.none,
        ),
      ),
      fixedSize: MaterialStatePropertyAll(size),
      backgroundColor:
          MaterialStateProperty.all(bgColor ?? Colors.black),
      overlayColor: MaterialStateProperty.all(overlayColor??
          Colors.black),
      padding: MaterialStateProperty.all(padding),
    );
  }
}
