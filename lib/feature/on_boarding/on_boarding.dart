import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:se7ty_app/core/function/routing.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/core/utils/app_text_styles.dart';
import 'package:se7ty_app/feature/on_boarding/on_boarding_model.dart';
import 'package:se7ty_app/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white, actions: [
        if (index != 2)
          TextButton(
              onPressed: () {
                pushRelacement(context, WelcomeView());
              },
              child: Text(
                'تخطي',
                style: getbodyStyle(color: AppColors.color1),
              ))
      ]),
      body: Center(
        child: PageView.builder(
          onPageChanged: (value) => setState(() => index = value),
          itemCount: model.length,
          controller: controller,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  SvgPicture.asset(
                    model[index].image,
                    height: 300,
                    width: 250,
                  ),
                  const Spacer(),
                  Text(
                    model[index].title,
                    style: getTitleStyle(),
                  ),
                  Text(
                    model[index].body,
                    style: getbodyStyle(),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        SmoothPageIndicator(
                          controller: controller,
                          count: model.length,
                          effect: WormEffect(
                              activeDotColor: AppColors.color1, dotWidth: 20),
                        ),
                        const Spacer(),
                        if (index == 2)
                          SizedBox(
                            width: 100,
                            height: 55,
                            child: ElevatedButton(
                                onPressed: () {
                                  pushRelacement(context, WelcomeView());
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.color1,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(
                                  'هيا بنا',
                                  style: getbodyStyle(
                                      color: AppColors.white, fontSize: 20),
                                )),
                          )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
// class OnBoardingView extends StatefulWidget {
//   const OnBoardingView({Key? key}) : super(key: key);

//   @override
//   State<OnBoardingView> createState() => _OnBoardingState();
// }

// class _OnBoardingState extends State<OnBoardingView> {
//   var pageCon = PageController();
//   int lastIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.white,
//         actions: [
//           TextButton(
//               onPressed: () {
//                 Navigator.of(context).pushReplacement(MaterialPageRoute(
//                   builder: (context) => const WelcomeView(),
//                 ));
//               },
//               child: Text(
//                 'تخطي',
//                 style: getbodyStyle(color: AppColors.color1),
//               ))
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(children: [
//           Expanded(
//             child: PageView.builder(
//               onPageChanged: (value) {
//                 setState(() {
//                   lastIndex = value;
//                 });
//               },
//               itemCount: model.length,
//               controller: pageCon,
//               itemBuilder: (context, index) {
//                 return Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Spacer(flex: 1),
//                       SvgPicture.asset(model[index].image, width: 300),
//                       const Spacer(flex: 1),
//                       Text(
//                         model[index].title,
//                         style: getTitleStyle(),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         model[index].desc,
//                         textAlign: TextAlign.center,
//                         style: getbodyStyle(),
//                       ),
//                       const Spacer(flex: 2),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
