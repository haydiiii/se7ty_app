import 'package:flutter/material.dart';
import 'package:se7ty_app/core/function/routing.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/feature/auth/presentation/view/login_process.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushRelacement(context, const LoginProcess());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/logo.png')],
        ),
      ),
    );
  }
}
