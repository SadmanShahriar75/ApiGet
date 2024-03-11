import 'package:get/get.dart';

import '../modules/apitest/bindings/apitest_binding.dart';
import '../modules/apitest/views/apitest_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.APITEST;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.APITEST,
      page: () =>  ApitestView(),
      binding: ApitestBinding(),
    ),
  ];
}
