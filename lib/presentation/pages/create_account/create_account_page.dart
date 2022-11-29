import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refka/config/constants/app_colors.dart';
import 'package:refka/config/constants/app_text_styles.dart';
import 'package:refka/config/constants/assets.dart';

class CreateAccauntPage extends StatelessWidget {
  const CreateAccauntPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.h,
                    margin: EdgeInsets.only(top: 35.h),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          offset: const Offset(0, 10),
                          color: AppColors.black.withOpacity(.1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(Assets.icons.arrow),
                    ),
                  )
                ],
              ),
              Text(
                'Create account',
                style: AppTextStyles.head34w7.copyWith(
                  color: AppColors.black,
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 58.h,
                margin: EdgeInsets.symmetric(vertical: 5.h),
                decoration: BoxDecoration(
                  color: AppColors.textBgColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  style:
                      AppTextStyles.body16w6.copyWith(color: AppColors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Your Name',
                    hintStyle: AppTextStyles.body16w6
                        .copyWith(color: AppColors.textColor1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
