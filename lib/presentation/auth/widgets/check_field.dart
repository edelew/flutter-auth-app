import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/core/utils/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckFieldWidget extends StatefulWidget {
  const CheckFieldWidget({super.key});

  @override
  State<CheckFieldWidget> createState() => RregisterCheckboxFieldStateWidget();
}

class RregisterCheckboxFieldStateWidget extends State<CheckFieldWidget> {
  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: checkboxTap,
          child: SvgPicture.asset(
            isPressed ? AppIcons.checkboxPressed : AppIcons.checkboxEnabled,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: AppColors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 18.h / 12.sp,
            ),
            children: const [
              TextSpan(
                text: 'Ознакомлен с ',
              ),
              TextSpan(
                text: 'Договором оферты',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '\nи согласен на ',
              ),
              TextSpan(
                text: 'Рассылку',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void checkboxTap() {
    setState(() {
      isPressed = !isPressed;
    });
  }
}
