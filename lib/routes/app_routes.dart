import 'package:dark_s_application4/presentation/iphone_11_pro_max_one_screen/iphone_11_pro_max_one_screen.dart';
import 'package:dark_s_application4/presentation/iphone_11_pro_max_one_screen/binding/iphone_11_pro_max_one_binding.dart';
import 'package:dark_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dark_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String iphone11ProMaxOneScreen = '/iphone_11_pro_max_one_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone11ProMaxOneScreen,
      page: () => Iphone11ProMaxOneScreen(),
      bindings: [
        Iphone11ProMaxOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone11ProMaxOneScreen(),
      bindings: [
        Iphone11ProMaxOneBinding(),
      ],
    )
  ];
}
