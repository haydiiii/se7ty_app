import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/core/utils/app_text_styles.dart';
import 'package:se7ty_app/splash_view.dart';

void main() {
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
          dividerTheme: DividerThemeData(
            color: AppColors.black,
            indent: 10,
            endIndent: 10,
          ),
          fontFamily: GoogleFonts.cairo().fontFamily),
      home: const SplashView(),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
