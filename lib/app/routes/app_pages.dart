import 'package:get/get.dart';

import 'package:movies/app/modules/home/bindings/home_binding.dart';
import 'package:movies/app/modules/home/views/home_view.dart';
import 'package:movies/app/modules/search/bindings/search_binding.dart';
import 'package:movies/app/modules/search/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
