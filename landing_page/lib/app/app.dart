import 'package:landing_page/modules/dashboard/views/header/kelas-subHeader/buzz.dart';
import 'package:landing_page/modules/dashboard/views/header/kelas-subHeader/directory.dart';
import 'package:landing_page/modules/dashboard/views/header/kelas-subHeader/employee-list.dart';
import 'package:landing_page/modules/dashboard/views/header/kelas-subHeader/my-info.dart';
import 'package:landing_page/modules/dashboard/views/main.dart';
import 'package:landing_page/modules/splash_screen/splash_screen.dart';
import 'package:landing_page/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:landing_page/modules/landing_page/dialogs/info_alert/info_alert_dialog.dart';
import 'package:landing_page/modules/landing_page/views/main.dart';
// import 'package:landing_page/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView), // nama kelas
    MaterialRoute(page: SplashScreen),
    MaterialRoute(page: DashBoard), // nama kelas-nya
    MaterialRoute(page: Employee), // Lokasi: di-subNavbar
    MaterialRoute(page: MyInfo), // Lokasi: di-subNavbar
    MaterialRoute(page: DirectoryView), // Lokasi: di-subNavbar
    MaterialRoute(page: BuzzView), // Lokasi: di-subNavbar
    // MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
