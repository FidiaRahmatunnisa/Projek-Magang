import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class ModuleNavigation extends BaseViewModel {
  List<Module> get modules => [
        Module(label: 'Home', icon: Icons.home, isActive: false),
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
