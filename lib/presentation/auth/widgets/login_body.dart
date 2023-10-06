import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_button.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 60.h),
        Text(
          'Вход в аккаунт',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 40.h),
        const CustomTextField(
          labelText: 'Номер телефона',
          inputType: InputType.phoneNumber,
          // inputFormatters: [
          //   MaskedInputFormatter('+7 (###) ###-##-##'),
          // ],
        ),
        SizedBox(height: 16.h),
        const CustomTextField(
          labelText: 'Пароль',
          inputType: InputType.password,
          isPassword: true,
        ),
        SizedBox(height: 40.h),
        CustomButtonWidget(
          title: 'Войти',
          isElevated: true,
          onPressed: () {},
        ),
        SizedBox(height: 18.h),
        CustomButtonWidget(
          title: 'Забыли пароль?',
          isElevated: false,
          onPressed: () {},
        ),
      ],
    );
  }
}
