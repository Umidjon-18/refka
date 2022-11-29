import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class EmailComponent extends StatelessWidget {
  const EmailComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 299.w,
      height: 58.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.textFieldColor,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Your Email',
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          hintStyle: AppTextStyles.body16w6.copyWith(color: AppColors.secondartTextColor),
        ),
      ),
    );
  }
}
