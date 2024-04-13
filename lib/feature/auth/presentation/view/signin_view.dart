import 'package:flutter/material.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/core/utils/app_text_styles.dart';
import 'package:se7ty_app/feature/auth/presentation/view/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isVisable = false; // assuming this is defined somewhere

  String handleUserType() {
    // Implement your logic to determine the user type based on the index
    // For now, returning a placeholder string
    return "User Type";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'سجل دخول الان كـ "${handleUserType()}"',
                    style: getTitleStyle(),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.end,
                    decoration: const InputDecoration(
                      hintText: 'haydin@example.com',
                      prefixIcon: Icon(Icons.email_rounded),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) return 'من فضلك أدخل البريد الإلكتروني';
                      // You can add more validation logic if needed
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: AppColors.black),
                    obscureText: isVisable,
                    keyboardType: TextInputType.visiblePassword,
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
                            : Icons.visibility_off_rounded),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return 'من فضلك أدخل كلمة السر';
                      // You can add more validation logic if needed
                      return null;
                    },
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
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                           
                          }
                        },
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
                          'ليس لدي حساب ؟',
                          style: getbodyStyle(color: AppColors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => RegisterView(index: widget.index),
                              ),
                            );
                          },
                          child: Text(
                            'سجل الان',
                            style: getbodyStyle(color: AppColors.color1),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
