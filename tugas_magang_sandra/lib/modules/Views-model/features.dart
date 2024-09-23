import 'package:stacked/stacked.dart';

class Features extends BaseViewModel {
  List<FeatureCardModel> get features => [
        FeatureCardModel(
          title: 'Dashboard',
          description: 'Simplify data handling with an intuitive interface.',
        ),
        FeatureCardModel(
          title: 'Time & Attendance Tracking',
          description: 'Accurate and efficient time management.',
        ),
        FeatureCardModel(
          title: 'Recruitment Management',
          description: 'Streamline your hiring process.',
        ),
        FeatureCardModel(
          title: 'Performance Management',
          description: 'Track and improve employee performance.',
        ),
      ];
}

class FeatureCardModel {
  final String title;
  final String description;

  FeatureCardModel({
    required this.title,
    required this.description,
  });
}
