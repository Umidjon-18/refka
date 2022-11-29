import 'package:flutter/cupertino.dart';

import '../../config/constants/app_decorations.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final double height;
  final Widget child;
  final EdgeInsets margin;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: AppDecorations.defDecor,
        child: child,
      ),
    );
  }
}
