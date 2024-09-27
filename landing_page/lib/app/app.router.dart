// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i4;
import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/main.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i5;
import '../modules/dashboard/views/main.dart' as _i3;
import '../modules/dashboard/views/header/kelas-subHeader/employee-list.dart'
    as _i6;
import '../modules/dashboard/views/header/kelas-subHeader/my-info.dart' as _i7;
import '../modules/dashboard/views/header/kelas-subHeader/directory.dart'
    as _i8;
import '../modules/dashboard/views/header/kelas-subHeader/buzz.dart' as _i9;

class Routes {
  static const homeView = '/home-view';
  static const dashboardView = '/dashboard';
  static const SplashScreen = '/splash-screen';
  static const employeeView = 'employee-view';
  static const myInfoView = 'myInfo-view';
  static const directoryView = 'directory-view';
  static const buzzView = 'buzz-view';
  static const all = <String>{
    homeView,
    dashboardView,
    employeeView,
    myInfoView,
    directoryView,
    buzzView
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i3.DashBoard, // kelas utama yaw
    ),
    _i1.RouteDef(
      Routes.employeeView,
      page: _i6.Employee,
    ),
    _i1.RouteDef(Routes.myInfoView, page: _i7.MyInfo),
    _i1.RouteDef(Routes.directoryView, page: _i8.DirectoryView),
    _i1.RouteDef(
      Routes.buzzView,
      page: _i9.BuzzView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.HomeView(),
        settings: data,
      );
    },
    _i3.DashBoard: (data) {
      // Pastikan Anda mengimpor Dashboard
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.DashBoard(),
        settings: data,
      );
    },
    _i6.Employee: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.Employee(),
        settings: data,
      );
    },
    _i7.MyInfo: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context)=> _i7.MyInfo(),
        settings: data,
      );
    },
    _i8.DirectoryView: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context)=> _i8.DirectoryView(),
        settings: data,
      );
    },
    _i9.BuzzView: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context)=> _i9.BuzzView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i5.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    // Metode baru untuk navigasi ke Dashboard
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeView([
    // Metode baru untuk navigasi ke Dashboard
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

   Future<dynamic> navigateToMyInfoView([
    // Metode baru untuk navigasi ke Dashboard
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.myInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

   Future<dynamic> navigateToDirectoryView([
    // Metode baru untuk navigasi ke Dashboard
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.directoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

   Future<dynamic> navigateToBuzzView([
    // Metode baru untuk navigasi ke Dashboard
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.buzzView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
