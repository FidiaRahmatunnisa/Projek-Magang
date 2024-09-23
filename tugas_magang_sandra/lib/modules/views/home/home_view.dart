import 'package:Tugas_Magang_Sandra/modules/Views-model/dashboard_page.dart';
import 'package:flutter/material.dart';
import '../../Views-model/Dashboard-view.dart';
import '../../Views-model/features.dart';
import '../../Views-model/header.dart';
import '../../Views-model/module-navigation.dart';
import '../../Views-model/profile_sidebar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardPage>.reactive(
      viewModelBuilder: () => DashboardPage(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 230, 230, 250),
          body: Row(
            children: [
              // Sidebar
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ProfileSidebar(),
              ),
              // Konten Utama
              Expanded(
                child: Column(
                  children: [
                    HeaderSection(),
                    ModuleNavigationBar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            DashboardCards(),
                            /*  BenefitsSection(),
                            TestimonialsSection(), */
                            FooterSection(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    // TODO: implement builder
    throw UnimplementedError();
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    // TODO: implement viewModelBuilder
    throw UnimplementedError();
  }
}

class ModuleNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModuleNavigation>.reactive(
      viewModelBuilder: () => ModuleNavigation(),
      builder: (context, model, child) {
        return Container(
          color: Colors.orange[100],
          padding: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: model.modules.asMap().entries.map((entry) {
                final index = entry.key;
                final module = entry.value;
                return ModuleButton(
                  label: module.label,
                  icon: module.icon,
                  isActive: module.isActive,
                  onPressed: () => model.onModuleSelected(index),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}

class ModuleButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isActive;
  final VoidCallback onPressed;

  ModuleButton({
    required this.label,
    required this.icon,
    this.isActive = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: isActive ? Colors.white : Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            backgroundColor: Colors.transparent,
          ),
          icon: Icon(icon, size: 20),
          label: Text(label),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class DashboardCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardView>.reactive(
      viewModelBuilder: () => DashboardView(),
      builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2,
            physics: NeverScrollableScrollPhysics(),
            children: model.cards.map((card) {
              return DashboardCard(
                title: card.title,
                subtitle: card.subtitle,
                icon: card.icon,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  DashboardCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 30, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Header>.reactive(
      viewModelBuilder: () => Header(),
      builder: (context, model, child) {
        return Container(
          color: Colors.orange,
          padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
              bottom: 10), // Menambahkan padding atas
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.exit_to_app, color: Colors.white),
                    onPressed: model.onLogoutPressed,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Features>.reactive(
      viewModelBuilder: () => Features(),
      builder: (context, model, child) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Key Features',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SingleChildScrollView(
                child: Column(
                  children: model.features.map((feature) {
                    return FeatureCard(
                      title: feature.title,
                      description: feature.description,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;

  FeatureCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

/* class BenefitsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BenefitsViewModel>.reactive(
      viewModelBuilder: () => BenefitsViewModel(),
      builder: (context, model, child) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Why Choose PT Arkamaya?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              ...model.benefits.map((benefit) {
                return BenefitPoint(
                  title: benefit.title,
                  description: benefit.description,
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}

class BenefitPoint extends StatelessWidget {
  final String title;
  final String description;

  BenefitPoint({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '$title: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16)),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TestimonialsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestimonialsViewModel>.reactive(
      viewModelBuilder: () => TestimonialsViewModel(),
      builder: (context, model, child) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('What Our Clients Say',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              ...model.testimonials.map((testimonial) {
                return TestimonialCard(
                  clientName: testimonial.clientName,
                  testimonial: testimonial.testimonial,
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String clientName;
  final String testimonial;

  TestimonialCard({required this.clientName, required this.testimonial});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clientName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(testimonial),
          ],
        ),
      ),
    );
  }
} */

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '© 2024 PT Arkamaya. All rights reserved.',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          Text(
            'Privacy Policy | Terms of Service',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
