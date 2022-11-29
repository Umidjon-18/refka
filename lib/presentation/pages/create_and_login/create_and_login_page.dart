import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:refka/config/constants/app_colors.dart';
import 'package:refka/config/constants/app_text_styles.dart';
import 'package:refka/config/constants/assets.dart';
import 'package:refka/presentation/routes/routes.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.baseLight.shade100,
      appBar: CustomAppBar(backFunction: () {}),
      body: Column(
        children: [
          CustomButton(
            width: 299.w,
            height: 58.h,
            margin: EdgeInsets.only(top: 24.h, bottom: 72.h),
            onPressed: ()=> Navigator.pushNamed(context, Routes.createAccount),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                width: 145.w,
                height: 58.h,
                margin: EdgeInsets.only(top: 24.h, bottom: 10.h, right: 9.w),
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.facebook)),
              ),
              CustomButton(
                width: 145.w,
                height: 58.h,
                margin: EdgeInsets.only(top: 24.h, bottom: 10.h),
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.google)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                width: 145.w,
                height: 58.h,
                margin: EdgeInsets.only(right: 9.w),
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.pinterest)),
              ),
              CustomButton(
                width: 145.w,
                height: 58.h,
                onPressed: () {},
                child: Center(child: SvgPicture.asset(Assets.icons.vkontakte)),
              ),
            ],
          ),
          CustomButton(
            width: 299.w,
            height: 58.h,
            onPressed: () {},
            margin: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.apple),
                SizedBox(width: 10.w),
                Text("Sign in with Apple", style: AppTextStyles.body16w6),
              ],
            ),
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
            onTap: () => Navigator.pushNamed(context, Routes.login),
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
