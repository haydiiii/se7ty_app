import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/core/utils/app_text_styles.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          snackBarTheme: SnackBarThemeData(backgroundColor: AppColors.redColor),
          appBarTheme: AppBarTheme(
              titleTextStyle: getTitleStyle(color: AppColors.white),
              centerTitle: true,
              elevation: 0.0,
              actionsIconTheme: IconThemeData(color: AppColors.color1),
              backgroundColor: AppColors.color1),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding:
                const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            suffixIconColor: AppColors.color1,
            prefixIconColor: AppColors.color1,
            fillColor: AppColors.scaffoldBG,
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          fontFamily: GoogleFonts.cairo().fontFamily),
      home: const SplashView(),
    );
  }
}
