// feature/intro/onboard/data/model/onboard_model.dart
class OnboardingModel {
  final String image;
  final String title;
  final String body;
  OnboardingModel(
      {required this.image, required this.title, required this.body});
}

List<OnboardingModel> pages = [
  OnboardingModel(
      image: 'assets/on1.svg',
      title: 'ابحث عن دكتور متخصص',
      body:
          'اكتشف مجموعة واسعة من الأطباء الخبراء والمتخصصين في مختلف المجالات.'),
  OnboardingModel(
      image: 'assets/on2.svg',
      title: 'سهولة الحجز',
      body: 'احجز المواعيد بضغطة زرار في أي وقت وفي أي مكان.'),
  OnboardingModel(
      image: 'assets/on3.svg',
      title: 'آمن وسري',
      body: 'كن مطمئنًا لأن خصوصيتك وأمانك هما أهم أولوياتنا.')
];