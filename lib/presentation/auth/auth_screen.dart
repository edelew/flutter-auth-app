import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/auth/shared_widgets/custom_text_field.dart';
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
            const Text('Регистрация нового аккаунта'),
            SizedBox(height: 40.h),
            const CustomTextField(
              labelText: 'Номер телефона',
            ),
            SizedBox(height: 40.h),
            const Text('Выслать SMS-код'),
            SizedBox(height: 18.h),
            const Text('Выслать повторно'),
            SizedBox(height: 50.h),
            const CustomTextField(
              labelText: 'Код из SMS',
            ),
            SizedBox(height: 46.h),
            const Text('Ознакомлен с договором оферты и согласен на рассылку'),
            SizedBox(height: 46.h),
            const Text('Далее'),
          ],
        ),
      ),
    );
  }
}
