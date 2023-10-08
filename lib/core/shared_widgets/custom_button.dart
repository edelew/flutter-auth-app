import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.title,
    required this.isElevated,
    required this.onPressed,
    this.height,
    this.width,
    super.key,
  });

  final String title;

  final bool isElevated;

  final VoidCallback? onPressed;

  final double? height;

  final double? width;

  @override
  Widget build(BuildContext context) {
    if (isElevated) {
      return SizedBox(
        height: height ?? 40.h,
        width: width ?? 210.w,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.red,
            foregroundColor: AppColors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
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
