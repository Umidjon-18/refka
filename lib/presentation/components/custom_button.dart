import 'package:flutter/cupertino.dart';

import '../../config/constants/app_decorations.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final double height;
  final Row child;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: AppDecorations.defDecor,
        child: child,
      ),
    );
  }
}
