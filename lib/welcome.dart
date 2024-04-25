import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se7ty_app/core/function/routing.dart';
import 'package:se7ty_app/core/utils/app_colors.dart'; // Import AppColors
import 'package:se7ty_app/core/utils/app_text_styles.dart';
import 'package:se7ty_app/feature/auth/presentation/view/sign_in.dart'; // Import text styles

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.7,
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/welcome-bg.png"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 100,
                right: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'أهلا بيك',
                    style: getTitleStyle(fontSize: 38),
                  ),
                  Text(
                    'سجل واحجز عند دكتورك وانت فالبيت',
                    style: getsmallStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: AppColors.color1.withOpacity(.5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            blurRadius: 15,
                            offset: const Offset(5, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'سجل دلوقتي كــ',
                            style: getbodyStyle(
                              fontSize: 18,
                              color: AppColors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  pushTo(
                                      context,
                                      SignInView(
                                        index: 0,
                                      ));
                                },
                                child: Container(
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.scaffoldBG.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'دكتور',
                                      style: getTitleStyle(
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  pushTo(
                                      context,
                                      SignInView(
                                        index: 1,
                                      ));
                                },
                                child: Container(
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.scaffoldBG.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'مريض',
                                      style: getTitleStyle(
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
