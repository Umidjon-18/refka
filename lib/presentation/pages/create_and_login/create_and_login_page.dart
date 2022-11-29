import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:refka/config/constants/app_colors.dart';
import 'package:refka/config/constants/app_text_styles.dart';
import 'package:refka/config/constants/assets.dart';

import '../../../config/constants/app_decorations.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_button.dart';

class CreateAndLoginPage extends StatefulWidget {
  const CreateAndLoginPage({super.key});

  @override
  State<CreateAndLoginPage> createState() => _CreateAndLoginPageState();
}

class _CreateAndLoginPageState extends State<CreateAndLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseLight.shade100,
      appBar: CustomAppBar(backFunction: () {}),
      body: Column(
        children: [
          CustomButton(
            width: 299.w,
            height: 58.h,
            margin: EdgeInsets.only(top: 24.h, bottom: 72.h),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.unions),
                SizedBox(width: 10.w),
                Text("Create account", style: AppTextStyles.body16w6),
              ],
            ),
          ),
          Text(
            "Or sign up with ",
            style: AppTextStyles.body20wB.copyWith(color: Colors.black),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                width: 145.w,
                height: 58.h,
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.facebook)),
              ),
              SizedBox(width: 9.w),
              CustomButton(
                width: 145.w,
                height: 58.h,
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.google)),
              ),
            ],
          ),
          SizedBox(height: 10.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                width: 145.w,
                height: 58.h,
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.pinterest)),
              ),
              SizedBox(width: 9.w),
              CustomButton(
                width: 145.w,
                height: 58.h,
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.vkontakte)),
              ),
            ],
          ),
          SizedBox(height: 10.w),
          CustomButton(
            width: 299.w,
            height: 58.h,
            onPressed: () {},
            child: Center(child: SvgPicture.asset(Assets.icons.google)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 72.h),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "By signing up, you agree to ",
                style: AppTextStyles.body15w4.copyWith(color: AppColors.secondartTextColor),
                children: [
                  TextSpan(
                    text: "Refka’s\nTerms & Conditions and Private Policy",
                    style: AppTextStyles.body15w4.copyWith(color: AppColors.blackColor),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Already have an account?",
            style: AppTextStyles.body20wB.copyWith(color: Colors.black),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 297.w,
              height: 58.h,
              margin: EdgeInsets.only(top: 24.h),
              alignment: Alignment.center,
              decoration: AppDecorations.defDecor.copyWith(
                color: AppColors.baseLight.shade100,
                border: Border.all(width: 1.w, color: AppColors.blackColor),
              ),
              child: Text(
                "Log in",
                style: AppTextStyles.body16w6.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.telegram),
                SizedBox(width: 11.w),
                Text(
                  "Contact us",
                  style: AppTextStyles.body16w6.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
