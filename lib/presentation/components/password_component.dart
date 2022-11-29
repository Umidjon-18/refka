
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class PasswordComponent extends StatelessWidget {
  const PasswordComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 299.w,
      height: 58.h,
      margin: EdgeInsets.only(bottom: 31.h, top: 10.h),
      padding: EdgeInsets.only(right: 17.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.textFieldColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                hintStyle: AppTextStyles.body16w6.copyWith(color: AppColors.secondartTextColor),
              ),
            ),
          ),
          SvgPicture.asset(Assets.icons.unseen),
        ],
      ),
    );
  }
}
