import 'package:stacked/stacked.dart';

class BenefitsViewModel extends BaseViewModel {
  List<BenefitPointModel> get benefits => [
    BenefitPointModel(
      title: 'Customizable',
      description: 'Tailor the software to fit your unique business needs.',
    ),
    BenefitPointModel(
      title: 'Scalable',
      description: 'Grows with your business.',
    ),
    BenefitPointModel(
      title: 'User-Friendly',
      description: 'Easy for anyone to use, with minimal training.',
    ),
    BenefitPointModel(
      title: 'Secure',
      description: 'Keep your data safe with robust security features.',
    ),
  ];
}

class BenefitPointModel {
  final String title;
  final String description;

  BenefitPointModel({
    required this.title,
    required this.description,
  });
}
