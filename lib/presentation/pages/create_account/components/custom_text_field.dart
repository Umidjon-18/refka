import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refka/config/constants/assets.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.isIcon,
  }) : super(key: key);

  final String hintText;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 58.h,
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.textBgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        style: AppTextStyles.body16w6.copyWith(color: AppColors.black),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle:
              AppTextStyles.body16w6.copyWith(color: AppColors.textColor1),
          suffixIcon: isIcon
              ? SizedBox(
                  height: 24.h,
                  width: 24.h,
                  child: Center(
                    child: SvgPicture.asset(Assets.icons.unseen),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
