import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';

import 'package:se7ty_app/feature/on_boarding/on_boarding.dart';
import 'package:se7ty_app/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC8VhLJJ1e1pAQth7zVl3cNJ6vje6IDPDk",
          appId: "com.example.se7ty_app",
          messagingSenderId: "705001657828",
          projectId: "se7ety-eraa117"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintStyle: TextStyle(color: AppColors.geryColor),
              suffixIconColor: AppColors.color1,
              prefixIconColor: AppColors.color1,
              filled: true,
              fillColor: AppColors.color1.withOpacity(0.1))),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
