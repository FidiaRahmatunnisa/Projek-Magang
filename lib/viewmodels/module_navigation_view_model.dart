import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class ModuleNavigationViewModel extends BaseViewModel {
  List<Module> get modules => [
    Module(label: 'Home', icon: Icons.home, isActive: false),
    Module(label: 'Employee List', icon: Icons.people),
    Module(label: 'Directory', icon: Icons.folder),
    Module(label: 'Buzz', icon: Icons.notifications),
    Module(label: 'Announcements', icon: Icons.announcement),
    Module(label: 'Dashboard', icon: Icons.dashboard, isActive: true),
    Module(label: 'More', icon: Icons.more_horiz),
  ];
  
  void onModuleSelected(int index) {
    // Implementasi untuk memilih modul
    notifyListeners(); // Notifikasi jika ada perubahan
  }
}

class Module {
  final String label;
  final IconData icon;
  final bool isActive;

  Module({required this.label, required this.icon, this.isActive = false});
}
