import 'package:flutter/material.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/core/utils/app_text_styles.dart';
import 'package:se7ty_app/feature/onboarding/onboarding_model.dart';
import 'package:se7ty_app/welcome_view.dart';
import 'package:svg_flutter/svg.dart';


class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  var pageCon = PageController();
  int lastIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const WelcomeView(),
                ));
              },
              child: Text(
                'تخطي',
                style: getbodyStyle(color: AppColors.color1),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    lastIndex = value;
                  });
                },
                itemCount: model.length,
                controller: pageCon,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        SvgPicture.asset(model[index].image, width: 300),
                        const Spacer(flex: 1),
                        Text(
                          model[index].title,
                          style: getTitleStyle(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          model[index].desc,
                          textAlign: TextAlign.center,
                          style: getbodyStyle(),
                        ),
                        const Spacer(flex: 2),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
