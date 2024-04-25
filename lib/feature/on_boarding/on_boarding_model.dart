class OnBooardingModel {
  final String image;
  final String title;
  final String body;

  OnBooardingModel({required this.image, required this.title, required this.body});
}
List<OnBooardingModel> model = [
  OnBooardingModel(
      image: 'assets/on1.svg',
      title: 'ابحث عن دكتور متخصص',
      body:
          'اكتشف مجموعة واسعة من الأطباء الخبراء والمتخصصين في مختلف المجالات.'),
  OnBooardingModel(
      image: 'assets/on2.svg',
      title: 'سهولة الحجز',
      body: 'احجز المواعيد بضغطة زرار في أي وقت وفي أي مكان.'),
  OnBooardingModel(
      image: 'assets/on3.svg',
      title: 'آمن وسري',
      body: 'كن مطمئنًا لأن خصوصيتك وأمانك هما أهم أولوياتنا.')
];




// class OnboardingModel {
//   final String image;
//   final String title;
//   final String desc;

//   OnboardingModel(
//       {required this.image, required this.title, required this.desc});
// }

// List<OnboardingModel> model = [
//   OnboardingModel(
//       image: 'assets/on1.svg',
//       title: 'ابحث عن دكتور متخصص',
//       desc:
//           'اكتشف مجموعة واسعة من الأطباء الخبراء والمتخصصين في مختلف المجالات.'),
//   OnboardingModel(
//       image: 'assets/on2.svg',
//       title: 'سهولة الحجز',
//       desc: 'احجز المواعيد بضغطة زرار في أي وقت وفي أي مكان.'),
//   OnboardingModel(
//       image: 'assets/on3.svg',
//       title: 'آمن وسري',
//       desc: 'كن مطمئنًا لأن خصوصيتك وأمانك هما أهم أولوياتنا.')
// ];