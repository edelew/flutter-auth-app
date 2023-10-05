import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/presentation/auth/widgets/check_field.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_button.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            const CheckFieldWidget(),
            SizedBox(height: 46.h),
            CustomButtonWidget(
              title: 'Далее',
              isElevated: true,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
