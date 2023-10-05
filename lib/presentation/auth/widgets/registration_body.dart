import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/core/utils/icons.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_button.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationBody extends StatelessWidget {
  const RegistrationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 60.h),
        Text(
          'Регистрация нового аккаунта',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 40.h),
        const CustomTextField(
          labelText: 'Номер телефона',
        ),
        SizedBox(height: 40.h),
        CustomButtonWidget(
          title: 'Выслать SMS-код',
          isElevated: true,
          onPressed: () {},
        ),
        SizedBox(height: 18.h),
        CustomButtonWidget(
          title: 'Выслать повторно',
          isElevated: false,
          onPressed: () {},
        ),
        SizedBox(height: 50.h),
        const CustomTextField(
          labelText: 'Код из SMS',
        ),
        SizedBox(height: 46.h),
        const _CheckFieldWidget(),
        SizedBox(height: 46.h),
        CustomButtonWidget(
          title: 'Далее',
          isElevated: true,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _CheckFieldWidget extends StatefulWidget {
  const _CheckFieldWidget({super.key});

  @override
  State<_CheckFieldWidget> createState() => RregisterCheckboxFieldStateWidget();
}

class RregisterCheckboxFieldStateWidget extends State<_CheckFieldWidget> {
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
