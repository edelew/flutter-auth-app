import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SetProfileScreen extends StatelessWidget {
  const SetProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Настройка профиля',
          ),
        ),
      ),
    );
  }
}
