import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/presentation/auth/widgets/login_body.dart';
import 'package:flutter_auth_app/presentation/auth/widgets/registration_body.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            flexibleSpace: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  labelColor: AppColors.red,
                  unselectedLabelColor: AppColors.gray60,
                  indicatorColor: AppColors.red,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: 'Войти'),
                    Tab(text: 'Регистрация'),
                  ],
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              LoginBody(),
              RegistrationBody(),
            ],
          )),
    );
  }
}
