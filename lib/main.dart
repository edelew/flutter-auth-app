import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth_app/core/router/app_router.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     systemStatusBarContrastEnforced: true,
  //     systemNavigationBarColor: Colors.transparent,
  //     systemNavigationBarDividerColor: Colors.transparent,
  //   ),
  // );

  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     systemNavigationBarColor: AppColors.red,
  //   ),
  // );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return ScreenUtilInit(
      builder: (context, widget) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: true,
              scaffoldBackgroundColor: AppColors.white,
              appBarTheme: const AppBarTheme(backgroundColor: AppColors.white)),
          routerConfig: router.config(),
        );
      },
      designSize: const Size(360, 744),
    );
  }
}
