import 'package:get/get.dart';
import 'package:responsive_ui_getx/app/modules/home/view/expanded_demo_view.dart' show ExpandedView;
import 'package:responsive_ui_getx/app/modules/home/view/fitted_box_demo_view.dart' show FittedBoxView;
import 'package:responsive_ui_getx/app/modules/home/view/flexible_demo_view.dart' show FlexibleView;
import 'package:responsive_ui_getx/app/modules/home/view/home_view.dart' show HomeView;
import 'package:responsive_ui_getx/app/modules/home/view/media_query_view.dart' show MediaQueryView;
import 'package:responsive_ui_getx/app/modules/home/view/wrap_demo_view.dart' show WrapView;
import '../modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.MEDIA_QUERY,
      page: () => MediaQueryView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.FLEXIBLE,
      page: () => FlexibleView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.EXPANDED,
      page: () => ExpandedView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.FITTED_BOX,
      page: () => FittedBoxView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.WRAP,
      page: () => WrapView(),
      binding: HomeBinding(),
    ),
  ];
}