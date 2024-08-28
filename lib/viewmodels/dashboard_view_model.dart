import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class DashboardViewModel extends BaseViewModel {
  List<DashboardCardModel> get cards => [
    DashboardCardModel(
      title: 'My Actions',
      subtitle: 'No Pending Actions to Perform',
      icon: Icons.assignment_turned_in_outlined,
    ),
    DashboardCardModel(
      title: 'Quick Access',
      subtitle: 'General Request, Hiring Request...',
      icon: Icons.flash_on,
    ),
    DashboardCardModel(
      title: 'Employees on Leave Today',
      subtitle: 'Leave Period Not Defined',
      icon: Icons.people_alt_outlined,
    ),
    DashboardCardModel(
      title: 'Time At Work',
      subtitle: 'Time Tracking Details',
      icon: Icons.access_time_outlined,
    ),
    DashboardCardModel(
      title: 'Latest News',
      subtitle: 'Stay Updated with the Latest Info',
      icon: Icons.article_outlined,
    ),
    DashboardCardModel(
      title: 'Latest Documents',
      subtitle: 'Access Important Files',
      icon: Icons.folder_open_outlined,
    ),
  ];
}

class DashboardCardModel {
  final String title;
  final String subtitle;
  final IconData icon;

  DashboardCardModel({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}
