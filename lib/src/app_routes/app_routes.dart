import 'package:calculator/src/ui/utility/app_exports.dart';

class AppRoutes {

  static List<GetPage> getPages = [
    GetPage(
      name: AppPages.splashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppPages.calculatorView,
      page: () => const CalculatorView(),
    ),
  ];

}
