import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refka/config/constants/app_colors.dart';
import 'package:refka/config/constants/app_decorations.dart';
import 'package:refka/config/constants/app_text_styles.dart';
import 'package:refka/config/constants/assets.dart';

import 'components/custom_text_field.dart';

class CreateAccauntPage extends StatefulWidget {
  const CreateAccauntPage({super.key});

  @override
  State<CreateAccauntPage> createState() => _CreateAccauntPageState();
}

class _CreateAccauntPageState extends State<CreateAccauntPage> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h, bottom: 48.h),
                child: Text(
                  'Create account',
                  style: AppTextStyles.head34w7.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              const CustomTextField(
                hintText: 'Your Name',
                isIcon: false,
              ),
              const CustomTextField(
                hintText: 'Your Eamil',
                isIcon: false,
              ),
              const CustomTextField(
                hintText: 'Password',
                isIcon: true,
              ),
              const CustomTextField(
                hintText: 'Repeat password',
                isIcon: true,
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 24.h),
                child: TextButton(
                  onPressed: () {},
                  style: AppDecorations.buttonStyle(
                    bgColor: AppColors.black,
                    borderRadius: 10.r,
                    size: const Size.fromWidth(double.maxFinite),
                    padding: EdgeInsets.symmetric(vertical: 21.h),
                  ),
                  child: Text(
                    'Create account',
                    style: AppTextStyles.body16w6.copyWith(color: AppColors.white),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    },
                    side: const BorderSide(
                      color: AppColors.textColor1,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    activeColor: AppColors.textColor1,
                    checkColor: AppColors.black,
                  ),
                  SizedBox(
                    width: 240.w,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: 'I agree to the ',
                        style: AppTextStyles.body15w4.copyWith(color: AppColors.textColor1),
                        children: [
                          TextSpan(
                            text: 'Refka’s Terms & Conditions and Private Policy',
                            style: AppTextStyles.body15w4.copyWith(color: AppColors.black),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 72.h, bottom: 24.h),
                child: Text(
                  'Already have an account?',
                  style: AppTextStyles.body20wB.copyWith(color: AppColors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: AppDecorations.buttonStyle(
                  bgColor: AppColors.white,
                  borderRadius: 10.r,
                  border: const BorderSide(color: AppColors.black, width: 1),
                  size: const Size.fromWidth(double.maxFinite),
                  padding: EdgeInsets.symmetric(vertical: 21.h),
                ),
                child: Text(
                  'Log in',
                  style: AppTextStyles.body16w6.copyWith(color: AppColors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
