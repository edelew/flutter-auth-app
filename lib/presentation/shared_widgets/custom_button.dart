import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.onPressed,
    this.height,
    this.width,
    required this.title,
    required this.isElevated,
    super.key,
  });

  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final String title;
  final bool isElevated;

  @override
  Widget build(BuildContext context) {
    if (isElevated) {
      return SizedBox(
        height: height ?? 40.h,
        width: width ?? 210.w,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.red),
            foregroundColor: MaterialStateProperty.all(AppColors.white),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ),
          child: Text(
            title,
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.red,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ),
      );
    }
  }
}
