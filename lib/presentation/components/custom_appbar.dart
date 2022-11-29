// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/assets.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.backFunction,
  });
  void Function() backFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: backFunction,
          child: Container(
            width: 44.h,
            height: 44.h,
            margin: EdgeInsets.only(bottom: 8.h, left: 38.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.baseLight.shade100,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  offset: const Offset(0, 10),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(Assets.icons.arrow),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 96.h);
}
