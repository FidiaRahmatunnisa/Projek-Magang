import 'package:stacked/stacked.dart';

class Header extends BaseViewModel {
  // Data atau metode untuk HeaderSection
  String get title => 'Employee Management';

  void onLogoutPressed() {
    // Implementasi logika logout
    notifyListeners(); // Notifikasi jika ada perubahan
  }
}
