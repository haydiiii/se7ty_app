import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:se7ty_app/core/function/routing.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/core/utils/app_text_styles.dart';
import 'package:se7ty_app/feature/auth/presentation/view/sign_in.dart';

bool isVisable = true;

class SignUpView extends StatefulWidget {
  const SignUpView({super.key, required this.index});
  final int index;

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String handelUserType() {
    return widget.index == 0 ? 'دكتور' : 'مريض';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              Text(
                'سجل دخول الان كـ ${handelUserType()}',
                style: getTitleStyle(),
              ),
              const Gap(25),
              TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(color: AppColors.black),
                decoration: InputDecoration(
                  hintText: 'الاسم',
                  hintStyle: getbodyStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.person),
                ),
                validator: (value) {
                  if (value!.isEmpty) return 'من فضلك ادخل الاسم';
                  return null;
                },
              ),
              const Gap(25),
              TextFormField(
                textAlign: TextAlign.end,
                decoration: const InputDecoration(
                  hintText: 'Haidi@example.com',
                  prefixIcon: Icon(Icons.email_rounded),
                ),
                textInputAction: TextInputAction.next,
              ),
              const Gap(25),
              TextFormField(
                textAlign: TextAlign.end,
                style: TextStyle(color: AppColors.black),
                decoration: InputDecoration(
                  hintText: '********',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: Icon((isVisable)
                          ? Icons.remove_red_eye
                          : Icons.visibility_off_rounded)),
                  prefixIcon: const Icon(Icons.lock),
                ),
                textInputAction: TextInputAction.next,
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(top: 5, right: 10),
                child: Text(
                  'نسيت كلمة السر ؟',
                  style: getsmallStyle(),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.color1,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      "تسجيل الدخول",
                      style: getTitleStyle(color: AppColors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' لدي حساب ؟',
                      style: getbodyStyle(color: AppColors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          pushRelacement(
                              context,
                              SignInView(
                                index: widget.index,
                              ));
                        },
                        child: Text(
                          'سجل دخول',
                          style: getbodyStyle(color: AppColors.color1),
                        ))
                  ],
                ),
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
