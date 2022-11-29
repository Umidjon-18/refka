import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:refka/config/constants/app_text_styles.dart';
import 'package:refka/config/constants/assets.dart';

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
      appBar: AppBar(),
      body: Column(
        children: [
          CustomButton(
            width: 299.w,
            height: 58.h,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.unions),
                SizedBox(width: 10.w),
                Text("Button", style: AppTextStyles.body16w6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
