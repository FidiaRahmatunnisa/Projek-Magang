import 'package:stacked/stacked.dart';

class TestimonialsViewModel extends BaseViewModel {
  List<TestimonialModel> get testimonials => [
    TestimonialModel(
      clientName: 'John Doe',
      testimonial: 'The system has transformed our HR processes. Highly recommend!',
    ),
    TestimonialModel(
      clientName: 'Jane Smith',
      testimonial: 'A great tool for managing employee data and performance.',
    ),
  ];
}

class TestimonialModel {
  final String clientName;
  final String testimonial;

  TestimonialModel({
    required this.clientName,
    required this.testimonial,
  });
}
