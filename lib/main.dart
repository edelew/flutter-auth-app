import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/auth/auth_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: ScreenUtilInit(
        builder: (context, widget) {
          return const AuthScreen();
        },
        designSize: const Size(360, 744),
      ),
    );
  }
}
