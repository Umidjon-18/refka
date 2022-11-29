import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:refka/config/constants/app_colors.dart';
import 'package:refka/config/constants/app_text_styles.dart';
import 'package:refka/config/constants/assets.dart';
import 'package:refka/presentation/components/custom_appbar.dart';
import 'package:refka/presentation/components/custom_button.dart';

import '../../components/email_component.dart';
import '../../components/password_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.baseLight.shade100,
      appBar: CustomAppBar(
        backFunction: () => Navigator.pop(context),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 38.w, top: 24.h, bottom: 48.h),
              child: Text(
                "Login",
                style: AppTextStyles.body34wB.copyWith(color: AppColors.blackColor),
              ),
            ),
          ),
          const EmailComponent(),
          const PasswordComponent(),
          Text(
            "Forget password?",
            style: AppTextStyles.body16w6.copyWith(color: AppColors.blackColor),
          ),
          CustomButton(
            width: 299.w,
            height: 58.h,
            margin: EdgeInsets.only(bottom: 24.h, top: 31.h),
            onPressed: () {},
            child: Center(child: Text("Log In", style: AppTextStyles.body16w6)),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Don’t have an account?",
              style: AppTextStyles.body15w4.copyWith(color: AppColors.secondartTextColor),
              children: [
                TextSpan(
                  text: " Sign up",
                  style: AppTextStyles.body15w4.copyWith(color: AppColors.blackColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "Or login with",
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
            margin: EdgeInsets.only(bottom: 58.76.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.apple),
                SizedBox(width: 10.w),
                Text("Sign in with Apple", style: AppTextStyles.body16w6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
